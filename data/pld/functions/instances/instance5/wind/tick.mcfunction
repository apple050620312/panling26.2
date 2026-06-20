execute store result bossbar pl:instance5_wind value run execute if entity @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=end_crystal]

#巽风破解检测
execute unless entity @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=end_crystal] unless score #system instance5_reset matches 1 run function pld:instances/instance5/wind/shut_off
#巽风检查屏障
function pld:instances/instance5/wind/barrier_check
#巽风计时
execute if score #system instance5_windt matches 1.. run scoreboard players remove #system instance5_windt 1

function pld:instances/instance5/wind/actiontick

