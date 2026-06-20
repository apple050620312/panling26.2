#区块强加载
forceload add 2868 -230 2882 -230
forceload add 2854 -244

#179 -15 2868 35 -230
#180 -15 2882 35 -230
#178 -16 2854 35 -244
execute unless loaded 2868 35 -230 run schedule function pld:beta/entity/test_zhan/1/1 2s
execute unless loaded 2882 35 -230 run schedule function pld:beta/entity/test_zhan/1/1 2s
execute unless loaded 2854 35 -244 run schedule function pld:beta/entity/test_zhan/1/1 2s
execute if loaded 2868 35 -230 if loaded 2882 35 -230 if loaded 2854 35 -244 run function pld:beta/entity/test_zhan/1/next


#execute unless entity 36d319b5-a6fc-42db-b9f6-99c7383a763a run schedule function pld:beta/entity/test_zhan/1/1 2s
#execute unless entity ab2770f9-7b13-4870-a773-14a509deeaf0 run schedule function pld:beta/entity/test_zhan/1/1 2s
#execute unless entity 160a6878-86cf-43e5-b645-45e7d13e0f6c run schedule function pld:beta/entity/test_zhan/1/1 2s
#execute unless entity 6aa50ba6-b622-4108-843f-16dd512901ca run schedule function pld:beta/entity/test_zhan/1/1 2s


#execute if entity 160a6878-86cf-43e5-b645-45e7d13e0f6c if entity 6aa50ba6-b622-4108-843f-16dd512901ca if entity 36d319b5-a6fc-42db-b9f6-99c7383a763a if entity ab2770f9-7b13-4870-a773-14a509deeaf0 run function pld:beta/entity/test_zhan/1/a
