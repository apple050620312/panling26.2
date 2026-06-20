#区块强加载
forceload add 1320 522 1320 497
execute unless loaded 1320 64 522 run schedule function pld:beta/entity/middle/11/11 2s
execute unless loaded 1320 64 497 run schedule function pld:beta/entity/middle/11/11 2s

#82 32
#execute unless entity d9f8d92b-b55d-4e4b-91fc-bf5b453f091a run schedule function pld:beta/entity/middle/11/11 2s
#execute unless entity 54ae8542-0631-40a4-b402-697b2a1fe16e run schedule function pld:beta/entity/middle/11/11 2s
#82 31
#execute unless entity 87f087c0-068f-4cfd-b7f8-211fc0ea294b run schedule function pld:beta/entity/middle/11/11 2s
#execute unless entity e1a819d3-fec5-4ced-92c7-4e1ca2b8731e run schedule function pld:beta/entity/middle/11/11 2s


execute if loaded 1320 64 522 if loaded 1320 64 497 run function pld:beta/entity/middle/11/next


#execute if entity d9f8d92b-b55d-4e4b-91fc-bf5b453f091a if entity 54ae8542-0631-40a4-b402-697b2a1fe16e if entity 87f087c0-068f-4cfd-b7f8-211fc0ea294b if entity e1a819d3-fec5-4ced-92c7-4e1ca2b8731e run function pld:beta/entity/middle/11/a
