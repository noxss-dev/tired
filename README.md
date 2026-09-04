## Tired >:]
![Tired Overview]()
A new window manager using Xlib, written in C.
Born because i watched LSP and it was horrible, i needed to relax and i accidentaly builded a Window Manager :/
## Key Features
The Modifier key is set (for default) to Mod4, which corresponds to the Super key, or for the friends the Windows key.

The default shortcuts are:
- Windows+D = App Menu
- Windows+K = Kill an app
- Thats it (for today).

***Note: We encourage r/UnixP#rn users to use a compositor like picom, as Tired doesn't have a formal config file (just as dwm).***
  
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
make
sudo mv ./tired /usr/bin/tired
```
Tip: Edit the Makefile as you like with `nano Makefile`, then `sudo make`
### Using POSIX tools
If you don't have sudo (i encourage you to installing sudo, it's simple), you can use the _old ancient way_.
First, remember where you are with `pwd` (mentally save that as MEOW).
Then do:
```
[cat@iusearchbtw tired-main]$ su -
```
Do:
```
[root@iusearchbtw ~]# cd MEOW
```
Now, replace MEOW with the `pwd` command you previously took. Now, after all of this bs, do:
```
[root@iusearchbtw tired-main]# make && mv ./tired /usr/bin/tired
```
And then:
```
[root@iusearchbtw tired-main]# exit
[cat@iusearchbtw tired-main]$
```
(was not using `sudo` really worth it?)
## Running
Assuming you have `xinit` installed (because told so in [the dependencies](https://github.com/noxss-dev/tired/tree/main#dependencies)) and you are in the `tired-main` directory, launch these commands:
```
mv xinit .xinitrc
mv .xinitrc $HOME
```
If you want to apply this for `root` users too (requires `sudo`):
```
sudo cp $HOME/.xinitrc /root/.xinitrc
```
And make sure that your wallpapers on .xinitrc are with the absolute path (if there is `~` or `$HOME`, it won't work).
