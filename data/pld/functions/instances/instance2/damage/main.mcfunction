tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate":"pl.info.instance2.fire1"}
execute if score #system instance2_firelv matches 0..1 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 0
execute if score #system instance2_firelv matches 2..3 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 1
execute if score #system instance2_firelv matches 4..5 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 2
execute if score #system instance2_firelv matches 6..7 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 3
execute if score #system instance2_firelv matches 8..9 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 4
execute if score #system instance2_firelv matches 10..11 run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 5
execute if score #system instance2_firelv matches 12.. run effect give @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] instant_damage 1 6
scoreboard players add #system instance2_firelv 1
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate":"pl.info.instance2.fire_tip"}