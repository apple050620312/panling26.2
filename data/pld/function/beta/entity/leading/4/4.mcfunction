forceload add 1331 30 1330 33
execute unless loaded 1331 63 30 run schedule function pld:beta/entity/leading/4/4 2s
execute unless loaded 1330 63 33 run schedule function pld:beta/entity/leading/4/4 2s
#execute unless entity f6b0198e-cf21-4c1b-bf36-161d0c7ea582 run schedule function pld:beta/entity/leading/4/4 2s
#execute unless entity 67f74698-e44c-4af3-ace0-8650e909af73 run schedule function pld:beta/entity/leading/4/4 2s

execute if loaded 1331 63 30 if loaded 1330 63 33 run function pld:beta/entity/leading/4/next
#execute if entity f6b0198e-cf21-4c1b-bf36-161d0c7ea582 if entity 67f74698-e44c-4af3-ace0-8650e909af73 run function pld:beta/entity/leading/4/next
