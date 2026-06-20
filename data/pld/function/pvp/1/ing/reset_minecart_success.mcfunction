kill @e[type=command_block_minecart,tag=pvp1]
summon command_block_minecart 1321 104 -1746 {Tags:["pvp1"],Invulnerable:1,CustomDisplayTile:1,DisplayState:{Name:"chest"},DisplayOffset:10,Fire:-128s}
tellraw @a[x=1280,y=0,z=-1920,dx=230,dy=250,dz=230] {"translate":"pl.info.pvp1_def_reset_minecart"}