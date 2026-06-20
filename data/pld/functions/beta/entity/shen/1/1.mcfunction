#区块强加载
forceload add 3303 352
execute unless loaded 3303 113 352 run schedule function pld:beta/entity/shen/1/1 2s
execute if loaded 3303 113 352 run function pld:beta/entity/shen/1/next

#execute unless entity 2b57fcb7-9dbf-445e-afee-de08ded3c450 run schedule function pld:beta/entity/shen/1/1 2s
#execute if entity 2b57fcb7-9dbf-445e-afee-de08ded3c450 run function pld:beta/entity/shen/1/next