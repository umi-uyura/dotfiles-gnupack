dotfiles gnupack
================

My dotfiles for [gnupack](http://gnupack.osdn.jp/) .


Installation routine
--------------------

Run the command prompt as an administrator.


### Install Chocolatey and Software

[Installation · chocolatey/choco Wiki · GitHub](https://github.com/chocolatey/choco/wiki/Installation)

```
> @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
> choco install <dotfiles>/init/chocolatey.config -y
```


Periodic maintenance
--------------------

### Chocolatey

Check for updated packages.

```
> choco outdated
```

Update packages.

```
> choco upgrade all -y
```
