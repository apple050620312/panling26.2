forceload add 581 83
execute unless loaded 581 33 83 run schedule function pld:beta/entity/east/4/4 2s
execute if loaded 581 33 83 run function pld:beta/entity/east/4/next
#execute unless entity 0a320ab9-c097-4261-9bc0-fdd03f4fb7de run schedule function pld:beta/entity/east/4/4 2s
#execute as 0a320ab9-c097-4261-9bc0-fdd03f4fb7de if data entity @s {Item:{components:{display:{Name:'{"translate":"pl.frame.ldp"}'}}}} run function pld:beta/entity/east/4/next
