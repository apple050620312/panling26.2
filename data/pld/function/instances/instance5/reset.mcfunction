function pld:instances/instance5/earth/reset
function pld:instances/instance5/fire/reset
function pld:instances/instance5/light/reset
function pld:instances/instance5/mountain/reset
function pld:instances/instance5/sky/reset
function pld:instances/instance5/swamp/reset
function pld:instances/instance5/water/reset
function pld:instances/instance5/wind/reset


execute as @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=!player] run function pld:system/tp_and_kill_self

kill @e[x=2992,y=-10000,z=-2000,dx=271,dy=10000,dz=303]
scoreboard players set #system instance5_reset 0