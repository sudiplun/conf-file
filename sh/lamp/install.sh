#!/bin/bash

# List of packages to check and install
packages=("php" "apache" "php-apache" "mariadb" "phpmyadmin")

# Function to check if a package is installed
is_installed() {
  pacman -Qs $1 >/dev/null 2>&1
}

# Function to download a file
download_file() {
  local url=$1
  local dest=$2

  echo "Downloading $url to $dest"
  # sudo wget -nc "$url" -P "$dest"
  sudo wget "$url" -P "$dest"

  if [[ $? -ne 0 ]]; then
    echo "Failed to download $url" >&2
    exit 1
  fi
}

# Update the package database
echo "Updating package database..."
if ! sudo pacman -Sy; then
  echo "Failed to update package database." >&2
  exit 1
fi

# Loop through the packages and check if they are installed
for package in "${packages[@]}"; do
  echo "Checking if $package is installed..."
  if is_installed $package; then
    echo "$package is already installed."
  else
    echo "$package is not installed. Installing..."
    if ! sudo pacman -S --noconfirm $package; then
      echo "Failed to install $package." >&2
      exit 1
    fi
  fi
done

echo "All packages checked and installed if necessary."

# Download configuration files
download_file "https://raw.githubusercontent.com/sudiplun/conf-file/main/sh/lamp/httpd.conf" "/etc/httpd/conf/"
download_file "https://raw.githubusercontent.com/sudiplun/conf-file/main/sh/lamp/phpmariadb.ini" "/etc/php/conf.d/"
download_file "https://raw.githubusercontent.com/sudiplun/conf-file/main/sh/lamp/phpmyadmin.conf" "/etc/httpd/conf/extra/"

echo "Configuration files downloaded successfully."
