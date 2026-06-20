#区块强加载
forceload add 262 22

execute unless loaded 262 63 22 run schedule function pld:beta/entity/middle/8/8 2s
#execute unless entity b855f4ff-0b38-49e0-a75b-3c3ecf49eb4c run schedule function pld:beta/entity/middle/8/8 2s

execute if loaded 262 63 22 run function pld:beta/entity/middle/8/next
#execute if entity b855f4ff-0b38-49e0-a75b-3c3ecf49eb4c run function pld:beta/entity/middle/8/next