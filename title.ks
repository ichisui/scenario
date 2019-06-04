
[cm]

@clearstack
@bg storage ="title3.jpg" time=100
@wait time = 200

@layopt layer="message" visible=false

*start

[playbgm storage="title_hmx1.ogg"]


[button x=300 y=250 graphic="title/button_start.png" target="gamestart"]
[button x=300 y=320 graphic="title/button_load.png"  role="load" ]
[button x=300 y=390 graphic="title/button_cg.png" storage="cg.ks" ]
[button x=300 y=460 graphic="title/button_replay.png" storage="replay.ks" ]
[button x=300 y=530 graphic="title/button_config.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
[stopbgm ]
@jump storage="scene1.ks"
