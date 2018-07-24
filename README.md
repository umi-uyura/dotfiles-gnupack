dotfiles gnupack
================

My dotfiles for [gnupack](http://gnupack.osdn.jp/) .


Installation routine
--------------------

### gnupack

* Download gnupack_devel-*.exe from [osdn site](https://osdn.jp/projects/gnupack/releases/p10360)
* Execute gnupack_devel-*.exe and extract to any folder
* gnupack_devel folder move to `C:\`
  * If joining a domain, move to `C:\Users\<user name>\`

#### Change home directory

* Edit `startup_config.ini`
  ``` ini
   [Process Variable]
      HOME      = %USERPROFILE%
  ```

### Generate ssh key and add to GitHub

Generate ssh key and add key to ssh-agent

```
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f ~/.ssh/my_github_rsa
$ eval $(ssh-agent -s)
Agent pid 99999
$ ssh-add ~/.ssh/my_github_rsa
```

Create `~/.ssh/config`

```
ForwardAgent yes

Host github.com
    HostName        github.com
    IdentityFile    ~/.ssh/github_rsa
    IdentitiesOnly  yes
    AddKeysToAgent  yes
    User            <main github account>

Host my-github.com
    HostName        github.com
    IdentityFile    ~/.ssh/my_github_rsa
    IdentitiesOnly  yes
```

Add ssh key to my GitHub account

```
$ clip < ~/.ssh/my_github_rsa.pub
...
$ ssh -T git@my-github.com
Hi <github account>! You've successfully authenticated, but GitHub does not provide shell access.
```

### Upgrade cygwin packages

```
$ apt-cyg dist-upgrade
```

### dotfiles

```
$ cd ~
$ git clone git@my-github.com:umi-uyura/dotfiles-gnupack.git dotfiles
$ git checkout <latest branch>      # if needed
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
> @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
> choco install <dotfiles>/init/chocolatey.config -y
```

### SDKMAN!

Execute after registering Cygwin related environment variables.

[Installation - SDKMAN!](http://sdkman.io/install.html)

```
$ curl -s "https://get.sdkman.io" | bash
```

### ssh-agent setting

1. `Win + R` and enter `shell:startup`
2. Copy *<dotfiles>/doc/startup/run-ssh-agent.cmd* when Windows Explorer opens

See: [Ussing Cygwin's ssh-agent in Windows - JJGR](http://juanjose.garciaripoll.com/blog/using-ssh-agent-on-windows)


Setting environment variables
-----------------------------

### User environment variables

| Variable Name | Example | Remarks |
|---------------|---------|---------|
| GNUPACK_HOME | C:\gnupack_devel\home | - |
| GNUPACK_ROOT | C:\gnupack_devel | - |
| ChocolateyInstall | C:\ProgramData\chocolatey | Auto addition by Chocolatey |
| SDKMAN_ROOT | C:\gnupack_devel\home\.sdkman\candidates | - |

#### Add PATH

| Name | Example | Remarks |
|------|---------|---------|
| Cygwin | %GNUPACK_ROOT%\app\cygwin\cygwin\bin | - |
| dotfiles/bin | %GNUPACK_HOME%\dotfiles\bin | - |
| Chocolatey | %ChocolateyInstall%\bin | Auto addition by Chocolatey |
| Android tools bin | %ANDROID_HOME%\tools\bin | - |
| Android build-tools | %ANDROID_HOME%\build-tools\25.0.3 | - |
| Dex2Jar | %ChocolateyInstall%\lib\dex2jar\tools | - |
| PostgreSQL | C:\Program Files\PostgreSQL\9.6\bin | - |
| sbt (SDKMAN) | %SDKMAN_ROOT%\sbt\0.13.15\bin | - |
| Scala (SDKMAN) | %SDKMAN_ROOT%\scala\2.12.2\bin | - |
| Activator (SDKMAN) | %SDKMAN_ROOT%\activator\1.3.10\bin | - |


### System environment variables

| Variable Name | Example | Remarks |
|---------------|---------|---------|
| ANDROID_HOME | C:\Android\android-sdk | Auto addition by Chocolatey (Android SDK) |
| Android tools | %ANDROID_HOME%\tools | Auto addition by Chocolatey (Android SDK) |
| Android platform-tools | %ANDROID_HOME%\platform-tools | Auto addition by Chocolatey (Android SDK) |
| JAVA_HOME | C:\Program Files\Java\jdk1.8.0_131 | Auto addition by JDK |


#### Add PATH

| Name | Example | Remarks |
|------|---------|---------|
| JDK | C:\Program Files\Java\jdk1.8.0_131\bin | Auto addition by JDK |


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
