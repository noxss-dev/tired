## Tired >:]
A new window manager using Xlib, written in C.
Born because WHY THE FUCK DISABLE FUCKING XORG SUPPORT FOR FRICKIN GNOME!1!1!1
And i watched LSP and it was horrible, i needed to relax and i accidentaly builded a Window Manager :/
## Features
The Modifier key is set (for default) to Mod4, which corresponds to the Super key, or for the friends the Windows key.

The default shortcuts are:
- Windows+D = App Menu
- Windows+K = Kill an app
- Thats it (for today).

Tired is (and will always be) one file of C code, you'll prolly never see Tired being split in more C snippets. Thats la peace (lol).
## Building
Before compiling, we need to install dependencies, let's get that done.
_(Those dependencies have been tested exclusively for Arch, bcuz i use arch btw)_
### Dependencies
The dependencies are few but quite important;
- `rofi` (used for `rofi -show drun`)
- `polybar` (used as status bar)
- `xterm` (used as the main terminal)
- `libx11` (necessary at compile-time, not runtime)
- `xorg` (metapackage, necessary for the graphical stack, 
basically the whole point, duh)
The optional dependencies are:
- `xinit` (or xorg-xinit, necessary if ya wanna launch
tired without headaches)
- `xorg-xrandr` (necessary if ya wanna use multimonitor)
You need to have Git and make, aswell as the C compiler.

Here is a sample code to install dependencies on [Arch Linux](https://archlinux.org/):
```
sudo pacman -S --needed xterm libx11 xorg-xinit rofi git make gcc
```
Then you'd wanna clone the github repo:
```
git clone https://github.com/noxss-dev/tired.git
```
And changing directory:
```
cd tired-main
```
Now, you just need to compile the WM.
### Having sudo enabled
If you have sudo enabled, you can compile the WM as easily as:
```
sudo make
```
Tip: Edit the Makefile as you like with `nano Makefile`, then `sudo make`
### Using POSIX tools
If you don't have sudo (i encourage you to installing sudo, it's simple), you can use the _old ancient way_.
First, remember where you are with `pwd` (mentally save that as MEOW).
Then do:
```
[cat@iusearchbtw tired]$ su -
```
Do:
```
[root@iusearchbtw ~]# cd MEOW
```
Now, replace MEOW with the `pwd` command you previously took. Now, after all of this bs, do:
```
[root@iusearchbtw tired]# make
```
And then:
```
[root@iusearchbtw tired]# exit
[cat@iusearchbtw tired]$
```
(was not using `sudo` really worth it?)
