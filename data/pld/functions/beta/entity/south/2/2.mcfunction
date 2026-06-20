#区块强加载
forceload add -27 862
execute unless loaded -27 50 862 run schedule function pld:beta/entity/south/2/2 2s
execute if loaded -27 50 862 run function pld:beta/entity/south/2/next
#execute unless entity cc1668a6-7915-44c1-8850-cd48c9347cb8 run schedule function pld:beta/entity/south/2/2 2s
#execute if entity cc1668a6-7915-44c1-8850-cd48c9347cb8 run function pld:beta/entity/south/2/next