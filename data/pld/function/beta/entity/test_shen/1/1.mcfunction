forceload add 2874 364
execute unless loaded 2874 6 364 run schedule function pld:beta/entity/test_shen/1/1 2s
execute if loaded 2874 6 364 run function pld:beta/entity/test_shen/1/next

#execute unless entity 3b934cbc-157f-4454-a9c7-9d68a2bc31a0 run schedule function pld:beta/entity/test_shen/1/1 2s
#execute unless entity d38ead1a-3b54-4e73-9463-faa852dcccbd run schedule function pld:beta/entity/test_shen/1/1 2s
#execute if entity 3b934cbc-157f-4454-a9c7-9d68a2bc31a0 if entity d38ead1a-3b54-4e73-9463-faa852dcccbd run function pld:beta/entity/test_shen/1/next