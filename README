## Tired >:]
A new window manager using Xlib, written in C.
### Building
The dependencies are few but quite important;
`rofi` (used for `rofi -show drun`)
`polybar` (used as status bar)
`xterm` (used as the main terminal)
`libx11-dev` (necessary at compile-time, not runtime)
`xorg` (metapackage, necessary for the graphical stack, 
basically the whole point, duh)
The optional dependencies are:
`xinit` (or xorg-xinit, necessary if ya wanna launch
tired without headaches)
`xorg-xrandr` (necessary if ya wanna use multimonitor)
You need to have Git and make, aswell as the C compiler.
Here is a sample code to install dependencies in Arch:
```
sudo pacman -S --needed xterm libx11-dev xorg-xinit rofi git make gcc
```
Then you'd wanna clone the github repo:
```
git clone https://github.com/noxss-dev/tired.git
```
And changing directory:
```
cd tired
```
Now, you just need to compile the WM.
### Having sudo enabled
If you have sudo enabled, you can compile the WM as easily as:
```
sudo make
```
Tip: Edit the Makefile as you like with `nano Makefile`, then `sudo make`
### Using POSIX tools
If you don't have sudo (i encourage you to installing sudo, it's simple), you can use the _ancient way_.
