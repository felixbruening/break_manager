# Break Manager Project
## Introduction
To avoid becoming a workaholic, it is useful to work hard for a certain amount of time and then take a short break. This makes you more efficient and not so exhausted at the end of the day. This tool informs the user when it is currently working (45 or 50 minutes) or when there is a break (15 or 10 minutes).

## Versions
The first version can be run in the shell, the other can be perfectly combined with 'i3bar' and 'i3status' of the i3 window manager.

## Installation
For installation, execute ```make``` in project directory. This will install ```control_break_manager```, ```break_manager```, ```break_manager_i3``` and ```break_manager_int``` to ```/usr/local/bin/```

## Structure
the file ```break_manager``` stores the relevant algorithms, it is the main module. File ```break_manager_int``` is the shell-version to output all infos to shell. ```break_manager_i3``` is the shell script for i3status for the i3 window manager. ```control_break_manager``` is for starting and stopping the break manager.

## Usage
Following command sets timer configuration. This command sets the current date for start date. 
```
$ control_break_manager -start 45
```
After that, the break manager must be executet.
```
$ break_manager_int
```
The Break manager is now counting down from 45 minutes to 0 minutes. After that the pause interval is shown. After the pause, the counter repeats at 45 Minutes.

To Stop timer, execute following command:
```
$ control_break_manager -stop
```

## Usage in i3bar
Add following to your i3wm-config file in ```~/.config/i3/config```:
```
bar {
    position top
    status_command exec </path/to>/break_manager_i3
}
```

Additionally, you can add a interactive window for ```control_break_manager``` in which you add following lines to i3config:
```
bindsym $mod+Shift+t exec "i3-nagbar -t warning -m 'Break-Time-Manager, Choose an option' -B 'Start timer [w: 50]' 'control_break_manager -start 50' -B 'Start timer [w: 45]' 'control_break_manager -start 45' -B 'Stop Timer' 'control_break_manager -stop'"
```



