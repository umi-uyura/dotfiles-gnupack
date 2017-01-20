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


Setting environment variables
-----------------------------

### User environment variables

| Variable Name | Example | Remarks |
|---------------|---------|---------|
| GNUPACK_HOME | C:\gnupack_devel\home | - |
| GNUPACK_ROOT | C:\gnupack_devel | - |
| ChocolateyInstall | C:\ProgramData\chocolatey | Auto addition by Chocolatey |
| ANDROID_HOME | C:\Users\<User>\AppData\Local\Android\android-sdk | - |

#### Add PATH

| Name | Example | Remarks |
|------|---------|---------|
| Cygwin | %GNUPACK_ROOT%\app\cygwin\cygwin\bin | - |
| dotfiles/bin | %GNUPACK_HOME%\dotfiles\bin | - |
| Chocolatey | %ChocolateyInstall%\bin | Auto addition by Chocolatey |
| Android tools | %ANDROID_HOME%\tools | - |
| Android platform-tools | %ANDROID_HOME%\platform-tools | - |
| Android build-tools | %ANDROID_HOME%\build-tools\24.0.3 | - |
| Dex2Jar | %ChocolateyInstall%\lib\dex2jar\tools | - |


### System environment variables

| Variable Name | Example | Remarks |
|---------------|---------|---------|
| JAVA_HOME | C:\Program Files\Java\jdk1.8.0_121 | Auto addition by JDK |


#### Add PATH

| Name | Example | Remarks |
|------|---------|---------|
| JDK | C:\Program Files\Java\jdk1.8.0_121\bin | Auto addition by JDK |


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
