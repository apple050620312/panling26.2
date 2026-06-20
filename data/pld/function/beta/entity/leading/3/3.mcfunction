forceload add 1331 56
execute unless loaded 1331 63 56 run schedule function pld:beta/entity/leading/3/3 2s
#execute unless entity 6c6a001c-1d97-451b-aef0-5a915d6ca7ea run schedule function pld:beta/entity/leading/3/3 2s
#execute unless entity 9a6ee805-b2f0-45be-a33f-641da7fd53d3 run schedule function pld:beta/entity/leading/3/3 2s

execute if loaded 1331 63 56 run function pld:beta/entity/leading/3/next
#execute if entity 6c6a001c-1d97-451b-aef0-5a915d6ca7ea if entity 9a6ee805-b2f0-45be-a33f-641da7fd53d3 run function pld:beta/entity/leading/3/next
