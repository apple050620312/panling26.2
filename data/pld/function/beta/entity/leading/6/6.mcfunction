forceload add 1294 38
execute unless loaded 1294 63 38 run schedule function pld:beta/entity/leading/6/6 2s
#execute unless entity 4a7013ae-033b-432e-9b66-3f9fdba93e74 run schedule function pld:beta/entity/leading/6/6 2s
#execute unless entity afbc6998-01d5-4ddd-9bab-2c4c289dc3a7 run schedule function pld:beta/entity/leading/6/6 2s
execute if loaded 1294 63 38 run function pld:beta/entity/leading/6/next

#execute if entity 4a7013ae-033b-432e-9b66-3f9fdba93e74 if entity afbc6998-01d5-4ddd-9bab-2c4c289dc3a7 run function pld:beta/entity/leading/6/next
