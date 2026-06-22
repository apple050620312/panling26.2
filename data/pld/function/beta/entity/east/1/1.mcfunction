forceload add 533 25

execute unless loaded 533 33 25 run schedule function pld:beta/entity/east/1/1 2s
execute if loaded 533 33 25 run function pld:beta/entity/east/1/next

#execute unless entity 00e2fda4-51a5-46dc-99e0-638aa04994ea run schedule function pld:beta/entity/east/1/1 2s
#execute as 00e2fda4-51a5-46dc-99e0-638aa04994ea if data entity @s {Item:{components:{display:{Name:'{"translate":"pl.frame.qz"}'}}}} run function pld:beta/entity/east/1/next
