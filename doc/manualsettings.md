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
#    PATH =              # PATHを初期化している部分を削除することで、Windowsの環境変数が有効になる

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


### File - Settings -> Build, Execution, Deployment -> Instant Run

* Show Instant Run status notifications: **ON**



Hain
----

### Plugin

* hain-plugin-pc
* hain-plugin-cmd
