Manual Settings
===============

Windows 10を想定。


Windows - 設定
--------------

### システム

* マルチタスク
    * 仮想デスクトップ
        * タスクバーに次の場所で開いているウィンドウを表示する: **すべてのデスクトップ**
        * Alt + Tabキーを押したときに次の場所で開いているウィンドウを表示する: **すべてのデスクトップ**

### 個人用設定

* タスクバー
    * 小さいタスクバーボタンを使う: オン
    * コマンドプロンプトをPowerShellに置き換える: オフ

### 時刻と言語

#### 地域と言語 -> 日付、時刻、地域の追加設定 -> 言語 -> 詳細設定

* 既定の入力方式の上書き: **日本語 - Google 日本語入力**


コマンドプロンプト
------------------

* 設定
    * フォント
        * サイズ: 14
    * レイアウト
        * ウインドウのサイズ
            * 幅: 120
            * 高さ: 70
        * ウインドウの位置
            * 左から: 5
            * 上から: 5
            * システム設定を使う: オフ


gnupack
-------

### /root/startup_config.ini

```ini
 [Process Variable]
    ## PATHを初期化している部分を削除することで、Windowsの環境変数が有効になる
    # PATH =

    ## 追加するPATHを前方に置くことで、CygwinやEmacsのコマンドを優先使用する
    # PATH = %PATH%;%EMACS_DIR%\bin
    # PATH = %PATH%;%LOCAL_DIR%\bin
    # PATH = %PATH%;%CYGWIN_DIR%\bin
    # PATH = %PATH%;%ROOT_DIR%\app\script
    # PATH = %PATH%;%ROOT_DIR%\app\vim
    # PATH = %PATH%;%windir%\system32;%windir%;%windir%\system32\Wbem
    # PATH = %PATH%;%WINDIR%\System32\WindowsPowerShell\v1.0
    PATH = %EMACS_DIR%\bin;%PATH%
    PATH = %LOCAL_DIR%\bin;%PATH%
    PATH = %CYGWIN_DIR%\bin;%PATH%
    PATH = %ROOT_DIR%\app\script;%PATH%
    PATH = %ROOT_DIR%\app\vim;%PATH%

 [startup_cygwin.exe]
    Init_Current_Dir     = %HOME%       # 起動時カレントディレクトリをHOMEにする

 [startup_emacs.exe]
    Init_Current_Dir     = %HOME%       # 起動時カレントディレクトリをHOMEにする
    
 [startup_emacsclient.exe]
    Init_Current_Dir     = %HOME%       # 起動時カレントディレクトリをHOMEにする

 [startup_gvim.exe]
    Init_Current_Dir     = %HOME%       # 起動時カレントディレクトリをHOMEにする
```


Cygwin
------

### chere

* chereをインストール `apt-cyg install chere`
* Cygwinプロンプトを管理者として実行
* `chere -i -cm1 -s bash -t mintty -e "Cygwin Here(&W)"`


Google日本語入力
----------------

* プロパティ
    * 直接入力 - Henkan: **IMEを有効化**
    * 入力文字なし - Muhenkan: **IMEを無効化**


Google Chrome
-------------

### Chrome extensions

* [英辞郎 on the WEB 拡張機能](https://chrome.google.com/webstore/detail/%E8%8B%B1%E8%BE%9E%E9%83%8E-on-the-web-%E6%8B%A1%E5%BC%B5%E6%A9%9F%E8%83%BD/oonalfdoahlmjaoloddjenihohbfodme)
* [Mate Translate](https://chrome.google.com/webstore/detail/mate-translate-%E2%80%93-translat/ihmgiclibbndffejedjimfjmfoabpcke)
* [はてなブックマーク](https://chrome.google.com/webstore/detail/%E3%81%AF%E3%81%A6%E3%81%AA%E3%83%96%E3%83%83%E3%82%AF%E3%83%9E%E3%83%BC%E3%82%AF/dnlfpnhinnjdgmjfpccajboogcjocdla)
* [Save to Pocket](https://chrome.google.com/webstore/detail/save-to-pocket/niloccemoadcdkdjlinkgdfekeahmflj)
* [Evernote Web Clipper](https://chrome.google.com/webstore/detail/evernote-web-clipper/pioclpoplcdbaefihamjohnefbikjilc)
* [Create Link](https://chrome.google.com/webstore/detail/create-link/gcmghdmnkfdbncmnmlkkglmnnhagajbm)
* [AutoPagerize](https://chrome.google.com/webstore/detail/autopagerize/igiofjhpmpihnifddepnpngfjhkfenbp)
* [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc)
* [Vue.js devtools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
* [VisBug](https://chrome.google.com/webstore/detail/visbug/cdockenadnadldjbbgcallicgledbeoc) - Webデザインデバッグ
* [ChromeLens](https://chrome.google.com/webstore/detail/chromelens/idikgljglpfilbhaboonnpnnincjhjkd) - アクセシビリティチェックツール


Visual Studio Code
------------------

### Keyboard shortcuts

* Show All Editors ( `workbench.action.showAllEditors` ) : `ctrl+x ctrl+b`


IntelliJ IDEA
--------------

### File -> Settings -> Editor -> File Encodings

* Global Encoding: **UTF-8**
* Project Encoding: **UTF-8**
* Properties Files (*.properties): **UTF-8**


Android Studio
--------------

### File -> Settings -> Appearance & Behavior -> Appearance

* UI Options
    * Theme: **Darcula**
    * Override default fonts by (not recommemded): **Yu Gotchic UI** , Size: **14**


### File -> Settings -> Appearance & Behavior -> System Settings

* Startup/Shutdown
    * Reopen last project on startup: **OFF**


### File -> Settings -> Keymap

* Keymaps: **Emacs**をベースに新しいキーマップを作成

| アクション | キーマップ | 備考 |
|------------|------------|------|
| Backspace | Ctrl + H | 既存の `Shift+Backspace` は削除 |
| Auto-Indent Lines | Ctrl + Alt + \\ | - |
| Find Action | M + x | - |
| Tab | M + i | - |


### File -> Settings -> Editor -> General -> Appearance

* Show line numberes: **OFF**
* Show method separators: **ON**


### File -> Settings -> Editor -> Colors & Fonts

* **Save As...*** をクリックして、 **Darcula** ベースの新しいスキーマを作成しておく


### File -> Settings -> Editor -> Colors & Fonts -> Font

* Primary font: **Source Code Pro** , Size: **14**


### File -> Settings -> Editor -> Colors & Fonts -> Android Logcat

* Asset
    * Foreground: **#FF8785**
* Error
    * Foreground: **#FF6B68**
* Info
    * Foreground: **#5394EC**
* Warning
    * Foreground: **#D6BF55**


### File -> Settings -> Editor -> Inspections

* Serialization issues
    * Serializable class without 'serialVersionUID': **ON**


### File -> Settings -> Plugins

* Add Plugins
    * [ADB Idea](https://github.com/pbreault/adb-idea)
    * [DatabindingConvert](https://github.com/LiushuiXiaoxia/DatabindingConvert)
    * [AndroidDrawableViewer](https://github.com/androhi/AndroidDrawableViewer)
    * [Statistic](https://plugins.jetbrains.com/plugin/4509-statistic)


### File - Settings -> Build, Execution, Deployment -> Instant Run

* Show Instant Run status notifications: **ON**


Hain
----

### Plugin

* hain-plugin-pc
* hain-plugin-cmd
