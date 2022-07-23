**POWER OFF**

- poweroff / reboot / hold (with warning)
- init 0  or init 6 or  telinint (for older versions  of linux)
- shutdown -h (hault) 10 (minutes) "the system goes home in 10 minutes"

**Runlevels**

- run-level 5 --> graphical target 
- who -r = runlevel (to see what level are we in)
- systemctl get-default  ---> graphical.target
- systemctl set-default multi-user.target  (no graphical env. ) (run-level 3)
- systemctl isolate multi-user.target (دا هيغيرها علطول مش محتاج ريستارت)
- **Run-levels at Boot**
  - hit escape at grub boot 'e' to edit
  - in line 16 at the end "systemd.unit=rescue.target"
  - used to repair the system --> and this is run-level 1

