;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]

@bg storage ="black.jpg" time=100


;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=40 top=400 width=800 height=300 page=fore visible=false frame="frame.png" margint="60" marginl="50" marginr="30" marginb="70"]
[position layer="message1" width=850  top=10 left=60 page=fore visible=false frame="none" magint="10"]

;文字が表示される領域を調整
;[position layer=message0 page=fore frame="frame.png" margint="60" marginl="50" marginr="30" marginb="70"]
;[position layer=message1 page=fore frame="none" magint="10"]

;firstにて上記二つをマクロ化
[cm]

;メッセージウィンドウの表示
;@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=70 y=410]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;国広
[chara_new  name="kunihiro" storage="chara/kunihiro/normal.png" width="400" hight="600" jname="山姥切国広"  ]
;長義
;[chara_new name="chougi" storage="" jname="山姥切長義"]
;山伏
[chara_new name="yamabusi" storage="chara/yamabushi/normal.png" width="400" hight="600" jname="山伏国広"]
;堀川
[chara_new name="horikawa" storage="chara/horikawa/normal.png" width="400" hight="600" jname="堀川国広"]



[if exp="sf.killed>0"]
@jump storage = scene7.ks
[else]
  [if exp="sf.dead>0"]
  @jump storage =scene2.ks
  [else]
  @jump target=*通常のシナリオ
  [endif]
[endif]

*通常のシナリオ
[message1]
「あるじ……きょうだい……」[l][r][r]

心配しているのでは無いか。[l][r]
今頃、探してくれているのでは無いか。[l][r][r]

そうは思うが、確認する術は無い。[l][r]
全ては、神域の主たる山姥切次第。[l][r]
その山姥切が、出す気は疎か外を垣間見せる気すら無いのだ。[l][r][r]

[filter layer="base" blur="5"]
[filter layer="2"    blur="5"]

「まだ、外を見ようとするのか……俺を、見ろ、国広の」[l][r]
「っぁ、ちょぅぎ、や、め……」[p][r]

感覚は更に朧げに、熱は更に身体の奥深くまで喰い込んでくる。[l][r][r]

「ちょうぎ、ちょーぎ……ちょぅぎ――」[l][r]
「……ふふ、やっと、やっと俺だけを見る様になったね、国広の……」[l][r][r]

そして感覚が完全に無くなり、感じられるのは熱のみになって、暫く後。[r]

「国広、おやすみ……」[l][r][r]

山姥切のその声を最後に、熱すらも感じられ無くなった。[r]

[eval exp="sf.dead=sf.dead + 1"]

Bad End[p]


[free_filter layer="base"]
ここから先は筋肉劇場です。本編の空気を壊したくない方はスルーしてください。[r]
アドバイスを受けますか？[l]
[glink x="320" y="300" width="200" text="Yes" target="*part1" color="green"]
[glink x="320" y="400" width="200" text="No" target="*part2" color="red"]
[s]

*part1
;道場に変更
@bg storage ="kendoujyou000.jpg" time=100
;ウィンドウメッセージに変更
[message0]
[chara_show name="horikawa"]
#horikawa
久しぶりだね！兄弟！元気にしてた？[r][p]
[chara_show name=" yamabusi"]
#yamabusi
…元気にしている場合はここに来ないと思うのである…[p]
ごほん…[l]兄弟、ここはなんのための こーなー であると思う？[p]
#horikawa
えっと、兄弟が幸せになるためのアドバイスをするところだよね？[p]
#yamabusi
その通りである。[l][r]
嘆かわしいことに拙僧らには直接、兄弟を助け出す力がない。[r][l]
ならば、こうして兄弟に助言をすれば良いというわけである！[r][p]
#horikawa
つまり舞台裏ということだね！[r][l]
了解したよ！兄弟！[r][p]
[filter layer="all" brightness="70"]
#yamabusi
ぬぉ！もう時間か！[r][l]
兄弟、きっと道は見えるはずなのである！[p]
#horikawa
…僕ら、まともなアドバイスできてたかな…[r][l]
[filter layer="all" brightness="0"]
初回だから仕方ないよね！[p]

[message1]
[chara_hide_all]
@bg storage="black.jpg"
[free_filter]

*part2


[jump storage=title.ks]
