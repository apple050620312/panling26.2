#阵法冷却时间递减
#scoreboard players remove @a[scores={zf_cool=0..}] zf_cool 1
execute if score @s zf_cool_metal matches 0.. run scoreboard players remove @s zf_cool_metal 1
execute if score @s zf_cool_wood matches 0.. run scoreboard players remove @s zf_cool_wood 1
execute if score @s zf_cool_water matches 0.. run scoreboard players remove @s zf_cool_water 1
execute if score @s zf_cool_fire matches 0.. run scoreboard players remove @s zf_cool_fire 1
execute if score @s zf_cool_earth matches 0.. run scoreboard players remove @s zf_cool_earth 1
#冷却结束提示
#title @a[scores={zf_cool=0}] clear
#title @a[scores={zf_cool=0}] actionbar {"translate":"pl.info.zfcoolover","color":"green","bold":true}
#playsound minecraft:pl.zf.cooldown player @a[scores={zf_cool=0}] ~ ~ ~ 0.3

execute if score @s zf_cool_metal matches 0 run function pld:system/zf/cooldown/metal
execute if score @s zf_cool_wood matches 0 run function pld:system/zf/cooldown/wood
execute if score @s zf_cool_water matches 0 run function pld:system/zf/cooldown/water
execute if score @s zf_cool_fire matches 0 run function pld:system/zf/cooldown/fire
execute if score @s zf_cool_earth matches 0 run function pld:system/zf/cooldown/earth

#启动阵法


