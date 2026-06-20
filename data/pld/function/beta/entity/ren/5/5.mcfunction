#区块强加载
forceload add 1771 132
execute unless loaded 1771 161 132 run schedule function pld:beta/entity/ren/5/5 2s
execute if loaded 1771 161 132 run function pld:beta/entity/ren/5/next

#execute unless entity 39cabf47-c329-4a60-b6e5-1f013d3ef070 run schedule function pld:beta/entity/ren/5/5 2s
#execute if entity 39cabf47-c329-4a60-b6e5-1f013d3ef070 run function pld:beta/entity/ren/5/next