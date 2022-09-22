# Brightness control using xrandr configuration utility 
A Bash script that can help you change your brightness level by using a custom shortcut.


## Dependencies
Install bc if it isn't already. We will need bc to work with decimals since the bash shell ignores the decimal point.
```bash
sudo apt-get install bc
```

## Installation and configuring shortcut
1. Copy the adjustbrightness.sh file to your home directory 
2. Create a custom keyboard shortcut in Ubuntu settings
![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/39270324/191630653-00bcb35b-f2ba-456b-b08f-ba3fcd0d50f4.gif)

3. Give it a name and custom shortcut 
4. Finally paste "./adjustbrightness.sh 0.1" and "./adjustbrightness.sh -0.1" to the command section of increase and decrease shortcuts respectively

If you like this, do not forget to give us a Star!
