forceload add 578 60

execute unless loaded 578 33 60 run schedule function pld:beta/entity/east/2/2 2s
execute if loaded 578 33 60 run function pld:beta/entity/east/2/next

#execute unless entity 83c36ad3-fdc9-4e5f-9df4-a70472655d64 run schedule function pld:beta/entity/east/2/2 2s
#execute as 83c36ad3-fdc9-4e5f-9df4-a70472655d64 if data entity @s {Item:{components:{display:{Name:'{"translate":"pl.frame.tjp"}'}}}} run function pld:beta/entity/east/2/next
