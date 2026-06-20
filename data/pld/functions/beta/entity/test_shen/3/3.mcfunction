#区块强加载
forceload add 2938 394 2907 362

#183 24
execute unless loaded 2934 255 395 run schedule function pld:beta/entity/test_shen/3/3 2s

#182 24
execute unless loaded 2924 255 395 run schedule function pld:beta/entity/test_shen/3/3 2s

#181 24
execute unless loaded 2904 255 395 run schedule function pld:beta/entity/test_shen/3/3 2s

#183 23
execute unless loaded 2934 255 375 run schedule function pld:beta/entity/test_shen/3/3 2s

#182 23
execute unless loaded 2924 255 375 run schedule function pld:beta/entity/test_shen/3/3 2s

#181 23
execute unless loaded 2904 255 375 run schedule function pld:beta/entity/test_shen/3/3 2s

#183 22
execute unless loaded 2934 255 355 run schedule function pld:beta/entity/test_shen/3/3 2s

#182 22
execute unless loaded 2924 255 355 run schedule function pld:beta/entity/test_shen/3/3 2s

#181 22
execute unless loaded 2904 255 355 run schedule function pld:beta/entity/test_shen/3/3 2s


execute if loaded 2934 255 395 if loaded 2924 255 395 if loaded 2904 255 395 if loaded 2934 255 375 if loaded 2924 255 375 if loaded 2904 255 375 if loaded 2934 255 355 if loaded 2924 255 355 if loaded 2904 255 355 run function pld:beta/entity/test_shen/3/next


#execute unless entity 36cff3da-f36f-44bf-aa0d-d3294e786e75 run schedule function pld:beta/entity/test_shen/3/3 2s
#execute unless entity 5a9f9ff8-8899-4c29-bfb8-d0a699fbda5c run schedule function pld:beta/entity/test_shen/3/3 2s
#execute unless entity d7d82f81-4067-4682-baa7-e40487caf050 run schedule function pld:beta/entity/test_shen/3/3 2s

#execute if entity 36cff3da-f36f-44bf-aa0d-d3294e786e75 if entity 5a9f9ff8-8899-4c29-bfb8-d0a699fbda5c if entity d7d82f81-4067-4682-baa7-e40487caf050 run function pld:beta/entity/test_shen/3/a
