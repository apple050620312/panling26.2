#区块强加载
forceload add 9 820 2 833
execute unless loaded 9 36 820 run schedule function pld:beta/entity/south/4/4 2s
execute unless loaded 2 50 833 run schedule function pld:beta/entity/south/4/4 2s
execute if loaded 9 36 820 if loaded 2 50 833 run function pld:beta/entity/south/4/next

#0 51
#execute unless entity 54b9efc3-07a8-425f-9e62-84d1a0364437 run schedule function pld:beta/entity/south/4/4 2s
#0 52
#execute unless entity 22a3aad0-a53b-4236-9af9-b8d72a3814b4 run schedule function pld:beta/entity/south/4/4 2s
#execute if entity 54b9efc3-07a8-425f-9e62-84d1a0364437 if entity 22a3aad0-a53b-4236-9af9-b8d72a3814b4 run function pld:beta/entity/south/4/next 