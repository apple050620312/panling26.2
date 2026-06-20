#副本失敗喊话
playsound entity.wither.ambient ambient @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] 2801 71 -414 10
tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate":"pl.info.instance1.failed1"}
tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate":"pl.info.instance1.failed2"}
#秒杀所有玩家
kill @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36]