#区块强加载
forceload add 1329 491
#execute unless entity ff842168-19c1-4ec6-a52b-fdcb21226b17 run schedule function pld:beta/entity/middle/12/12 2s
#execute unless entity a4911df0-55c9-4e4e-bf49-cc1330e071e1 run schedule function pld:beta/entity/middle/12/12 2s


execute unless loaded 1329 40 491 run schedule function pld:beta/entity/middle/12/12 2s
execute if loaded 1329 40 491 run function pld:beta/entity/middle/12/next


#execute if entity ff842168-19c1-4ec6-a52b-fdcb21226b17 if entity a4911df0-55c9-4e4e-bf49-cc1330e071e1 run function pld:beta/entity/middle/12/next

