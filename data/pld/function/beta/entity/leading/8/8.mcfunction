forceload add 1404 571
execute unless loaded 1404 63 571 run schedule function pld:beta/entity/leading/8/8 2s
#execute unless entity a196f29a-e852-4c69-b8cc-6d71fccc5209 run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity 91309e4a-a458-4e23-a135-5f78206f2ba6 run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity fed49b86-cd38-42ba-963f-b9af317a56c8 run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity d0f45b79-53ac-49a0-8a44-d0b8a187eced run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity 37b32198-1187-411c-bf6b-ccaf87dce4f3 run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity 8eb46436-b331-44a9-914d-fb4d84befb2e run schedule function pld:beta/entity/leading/8/8 2s

#execute unless entity 66d610a1-da82-4bab-ae27-c90425142bb3 run schedule function pld:beta/entity/leading/8/8 2s

execute if loaded 1404 63 571 run function pld:beta/entity/leading/8/next

#execute if entity a196f29a-e852-4c69-b8cc-6d71fccc5209 if entity 91309e4a-a458-4e23-a135-5f78206f2ba6 if entity fed49b86-cd38-42ba-963f-b9af317a56c8 if entity d0f45b79-53ac-49a0-8a44-d0b8a187eced if entity 37b32198-1187-411c-bf6b-ccaf87dce4f3 if entity 8eb46436-b331-44a9-914d-fb4d84befb2e if entity 66d610a1-da82-4bab-ae27-c90425142bb3 run function pld:beta/entity/leading/8/next
