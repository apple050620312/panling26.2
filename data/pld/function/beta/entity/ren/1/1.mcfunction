#区块强加载
forceload add 1605 106
execute unless loaded 1605 144 106 run schedule function pld:beta/entity/ren/1/1 2s
execute if loaded 1605 144 106 run function pld:beta/entity/ren/1/next
#execute unless entity 08a315ad-ec9b-49b9-bb16-a2c46365b820 run schedule function pld:beta/entity/ren/1/1 2s
#execute unless entity ddffa95f-bbb0-4a0a-9dbd-b5fc53993396 run schedule function pld:beta/entity/ren/1/1 2s
#execute if entity 08a315ad-ec9b-49b9-bb16-a2c46365b820 if entity ddffa95f-bbb0-4a0a-9dbd-b5fc53993396 run function pld:beta/entity/ren/1/next