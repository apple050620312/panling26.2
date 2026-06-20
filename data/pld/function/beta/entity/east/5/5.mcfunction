forceload add 844 -148
execute unless loaded 844 50 -148 run schedule function pld:beta/entity/east/5/5 2s
execute if loaded 844 50 -148 run function pld:beta/entity/east/5/next
#execute unless entity 8fc15fa3-db7f-40bc-b355-3b8cda0dc118 run schedule function pld:beta/entity/east/5/5 2s
#execute if entity 8fc15fa3-db7f-40bc-b355-3b8cda0dc118 run function pld:beta/entity/east/5/next
