forceload add 1204 648 1220 648
execute unless loaded 1204 63 648 run schedule function pld:beta/entity/leading/9/9 2s
execute unless loaded 1220 63 648 run schedule function pld:beta/entity/leading/9/9 2s
#execute unless entity bf4057da-0625-4a57-ad18-72a95f878626 run schedule function pld:beta/entity/leading/9/9 2s

#execute unless entity 09633964-c0ed-4f2e-9d11-bec67c5e712b run schedule function pld:beta/entity/leading/9/9 2s

#execute unless entity dcf83f6c-7a81-4178-b52d-d8fc7dd59073 run schedule function pld:beta/entity/leading/9/9 2s

#execute unless entity dc146b66-0a21-4c81-97a3-b813594ea1e2 run schedule function pld:beta/entity/leading/9/9 2s

#execute unless entity e21448b2-6863-4776-8c34-20f3cf79d4b5 run schedule function pld:beta/entity/leading/9/9 2s

#execute unless entity 7e2f5be9-b3d7-45c0-a1c7-83f15959ceea run schedule function pld:beta/entity/leading/9/9 2s

execute if loaded 1204 63 648 if loaded 1220 63 648 run function pld:beta/entity/leading/9/next
#execute if entity bf4057da-0625-4a57-ad18-72a95f878626 if entity 09633964-c0ed-4f2e-9d11-bec67c5e712b if entity dcf83f6c-7a81-4178-b52d-d8fc7dd59073 if entity dc146b66-0a21-4c81-97a3-b813594ea1e2 if entity e21448b2-6863-4776-8c34-20f3cf79d4b5 if entity 7e2f5be9-b3d7-45c0-a1c7-83f15959ceea run function pld:beta/entity/leading/9/next
