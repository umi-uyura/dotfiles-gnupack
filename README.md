dotfiles gnupack
================

My dotfiles for [gnupack](http://gnupack.osdn.jp/) .


Installation routine
--------------------

### gnupack

* Download gnupack_devel-*.exe from [osdn site](https://osdn.jp/projects/gnupack/releases/p10360)
* Execute gnupack_devel-*.exe and extract to any folder
* gnupack_devel folder move to `C:\`


### dotfiles

```
$ cd ~
$ git clone git@my-github.com:umi-uyura/dotfiles-gnupack.git dotfiles
$ ./dotfiles/dots/setup.sh
$ ./dotfiles/init/apt-cyg-init.sh
```

### .emacs

```
$ cd ~
$ git clone git@my-github.com:umi-uyura/dot.emacs.d-gnupack.git .emacs.d
```

Install [(Emacs) Cask](http://cask.readthedocs.io/en/latest/guide/installation.html#manual-installation) .

```
$ curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
$ cd ~/.emacs.d
$ cask
```

### Chocolatey and Software

Run the command prompt as an administrator.

[Installation · chocolatey/choco Wiki · GitHub](https://github.com/chocolatey/choco/wiki/Installation)

```
> @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
> choco install <dotfiles>/init/chocolatey.config -y
```


Periodic maintenance
--------------------

### Cygwin



### Emacs



### Chocolatey

Check for updated packages.

```
> choco outdated
```

Update packages.

```
> choco upgrade all -y
```
