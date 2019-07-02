;一番最初に呼び出されるファイル

[title name="ちょぎくに"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;会話モード
[macro name=message0]
@layopt layer=message1 visible=false
[current layer="message0"]
@layopt layer=message0 visible=true
[endmacro]

[macro name=message1]
@layopt layer=message0 visible=false
[current layer="message1"]
@layopt layer=message1 visible=true
[endmacro]

[macro name=k]
[l][r]
[endmacro]

[if exp="sf.dead==null"]
[eval exp="sf.dead=0"]
[endif]
;sf.deadは神隠しエンド、侵食エンド

[if exp="sf.food==null"]
[eval exp="sf.food=0"]
[endif]
;sf.foodは食べ物によって侵食され隠されたエンド

[if exp="sf.sdead==null"]
[eval exp="sf.sdead=0"]
[endif]
;自刃エンド

[if exp=sf.killed==null]
[eval exp="sf.killed=0"]
[endif]
;審神者に殺されエンド（基本的にちょーぎさんが記憶を持つ（与り知らぬ場所で殺された場合は知らない。知ることができない）

[if exp="sf.search==undefined"]
[eval exp="sf.search=false"]
[endif]
;エンド１３をチェック

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示


;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
