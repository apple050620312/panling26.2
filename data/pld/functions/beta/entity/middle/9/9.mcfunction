#区块强加载
forceload add 262 50
execute unless loaded 262 63 50 run schedule function pld:beta/entity/middle/9/9 2s
#execute unless entity 482babf4-19d2-474b-9fe6-95f838211495 run schedule function pld:beta/entity/middle/9/9 2s
#execute unless entity 19695a5c-e521-400c-af4f-f7281719c8cf run schedule function pld:beta/entity/middle/9/9 2s


execute if loaded 262 63 50 run function pld:beta/entity/middle/9/next

#execute if entity 482babf4-19d2-474b-9fe6-95f838211495 if entity 19695a5c-e521-400c-af4f-f7281719c8cf run function pld:beta/entity/middle/9/next