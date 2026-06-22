forceload add 578 70

execute unless loaded 578 33 70 run schedule function pld:beta/entity/east/3/3 2s
execute if loaded 578 33 70 run function pld:beta/entity/east/3/next
#execute unless entity fd9b8341-03d8-4859-b272-d33d1122e3d6 run schedule function pld:beta/entity/east/3/3 2s
#execute as fd9b8341-03d8-4859-b272-d33d1122e3d6 if data entity @s {Item:{components:{display:{Name:'{"translate":"pl.frame.zhp"}'}}}} run function pld:beta/entity/east/3/next
