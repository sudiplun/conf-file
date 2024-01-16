## Touchegg

**How to install Touchegg?**
https://github.com/JoseExposito/touchegg#ubuntu-debian-and-derivatives
***
conf file of software called **Touchegg** which gesture modify of touchpad in Linux mint with cinnamon DE.
This is config suite for those who are famaliar with ***Default GNOME Touchpad*** gestures, In another word who recently switch for Gnome to Cinnamon DE.......!
***
***Replace touchegg.conf in `/home/username/.config/touchegg` with download file***

OR copy and paste all.
Similar to Gnome DEsktop
```
<touchégg>
  <settings>
    <property name="animation_delay">0</property>
    <property name="action_execute_threshold">20</property>
    <property name="color">auto</property>
    <property name="borderColor">auto</property>
  </settings>
  <application name="All">
    <gesture type="PINCH" fingers="3" direction="IN">
      <action type="CLOSE_WINDOW">
        <animate>true</animate>
        <color>F84A53</color>
        <borderColor>F84A53</borderColor>
      </action>
    </gesture>
    <gesture type="TAP" fingers="3" direction="UNKNOWN">
      <action type="MOUSE_CLICK">
        <button>2</button>
        <on>begin</on>
      </action>
    </gesture>
    <gesture type="SWIPE" fingers="3" direction="DOWN">
      <action type="SEND_KEYS">
        <modifiers>Control_L</modifiers>
        <keys>Alt_L+Up</keys>
        <repeat>false</repeat>
        <animation>NONE</animation>
        <on>begin</on>
      </action>
    </gesture>
    <gesture type="TAP" fingers="2" direction="UNKNOWN">
      <action type="MOUSE_CLICK">
        <button>3</button>
        <on>begin</on>
      </action>
    </gesture>
    <gesture type="SWIPE" fingers="3" direction="UP">
      <action type="SEND_KEYS">
        <modifiers>Control_L</modifiers>
        <keys>Alt_L+Down</keys>
        <repeat>false</repeat>
        <animation>NONE</animation>
        <on>begin</on>
      </action>
    </gesture>
    <gesture type="SWIPE" fingers="3" direction="LEFT">
      <action type="SEND_KEYS">
        <modifiers>Control_L</modifiers>
        <keys>Alt_L+Right</keys>
        <repeat>false</repeat>
        <animation>NONE</animation>
        <on>begin</on>
      </action>
    </gesture>
    <gesture type="SWIPE" fingers="3" direction="RIGHT">
      <action type="SEND_KEYS">
        <modifiers>Control_L</modifiers>
        <keys>Alt_L+Left</keys>
        <repeat>false</repeat>
        <animation>NONE</animation>
        <on>begin</on>
      </action>
    </gesture>
  </application>
</touchégg>
```
