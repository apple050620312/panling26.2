#区块强加载
forceload add 2886 376 2837 405
#180 23
execute unless loaded 2882 10 380 run schedule function pld:beta/entity/test_shen/2/2 2s

#179 23
execute unless loaded 2870 10 380 run schedule function pld:beta/entity/test_shen/2/2 2s

#178 23
execute unless loaded 2853 10 380 run schedule function pld:beta/entity/test_shen/2/2 2s

#180 24
execute unless loaded 2882 10 395 run schedule function pld:beta/entity/test_shen/2/2 2s

#179 24
execute unless loaded 2870 10 395 run schedule function pld:beta/entity/test_shen/2/2 2s

#178 24
execute unless loaded 2853 10 395 run schedule function pld:beta/entity/test_shen/2/2 2s


#177 24
execute unless loaded 2840 10 395 run schedule function pld:beta/entity/test_shen/2/2 2s

#180 25
execute unless loaded 2882 10 402 run schedule function pld:beta/entity/test_shen/2/2 2s

#179 25
execute unless loaded 2870 10 402 run schedule function pld:beta/entity/test_shen/2/2 2s


execute if loaded 2882 10 380 if loaded 2870 10 380 if loaded 2853 10 380 if loaded 2882 10 395 if loaded 2870 10 395 if loaded 2853 10 395 if loaded 2870 10 402 if loaded 2840 10 395 if loaded 2882 10 402 run function pld:beta/entity/test_shen/2/next

#execute unless entity f6b3575a-5a2f-45d7-8950-361942c3fde4 run schedule function pld:beta/entity/test_shen/2/2 2s
#execute unless entity ebe1064b-3754-42cb-947f-697547eb5891 run schedule function pld:beta/entity/test_shen/2/2 2s

#execute if entity f6b3575a-5a2f-45d7-8950-361942c3fde4 if entity ebe1064b-3754-42cb-947f-697547eb5891 run function pld:beta/entity/test_shen/2/a
