#区块强加载
forceload add 1637 108

execute unless loaded 1637 138 108 run schedule function pld:beta/entity/ren/2/2 2s
execute if loaded 1637 138 108 run function pld:beta/entity/ren/2/next

#execute unless entity 161a636c-31c2-4231-abcf-2771fcb35450 run schedule function pld:beta/entity/ren/2/2 2s
#execute unless entity 817e7de1-1ff2-4cf8-8662-bce7022db79f run schedule function pld:beta/entity/ren/2/2 2s
#execute if entity 161a636c-31c2-4231-abcf-2771fcb35450 if entity 817e7de1-1ff2-4cf8-8662-bce7022db79f run function pld:beta/entity/ren/2/next