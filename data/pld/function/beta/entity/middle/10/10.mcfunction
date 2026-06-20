#区块强加载
forceload add 1336 523 1364 505
#83 32
execute unless loaded 1336 63 523 run schedule function pld:beta/entity/middle/10/10 2s
#83 31
execute unless loaded 1336 63 504 run schedule function pld:beta/entity/middle/10/10 2s
#84 32
execute unless loaded 1350 63 523 run schedule function pld:beta/entity/middle/10/10 2s
#84 31
execute unless loaded 1350 63 504 run schedule function pld:beta/entity/middle/10/10 2s
#85 32
execute unless loaded 1364 63 523 run schedule function pld:beta/entity/middle/10/10 2s
#85 31
execute unless loaded 1364 63 504 run schedule function pld:beta/entity/middle/10/10 2s
#execute unless entity 239c4de4-c5c2-48be-b310-1ad69929f85c run schedule function pld:beta/entity/middle/10/10 2s
#execute unless entity b658beb4-0dc3-45f1-99e3-173126a662d6 run schedule function pld:beta/entity/middle/10/10 2s
#execute unless entity 8d83225f-9ac4-4693-b430-5d1be74145fd run schedule function pld:beta/entity/middle/10/10 2s
#execute unless entity 05c5ef2d-b632-47cf-9114-c7344408dfbd run schedule function pld:beta/entity/middle/10/10 2s



execute if loaded 1336 63 523 if loaded 1336 63 504 if loaded 1350 63 523 if loaded 1350 63 504 if loaded 1364 63 523 if loaded 1364 63 504 run function pld:beta/entity/middle/10/next

#execute if entity 239c4de4-c5c2-48be-b310-1ad69929f85c if entity b658beb4-0dc3-45f1-99e3-173126a662d6 if entity 8d83225f-9ac4-4693-b430-5d1be74145fd if entity 05c5ef2d-b632-47cf-9114-c7344408dfbd run function pld:beta/entity/middle/10/a
