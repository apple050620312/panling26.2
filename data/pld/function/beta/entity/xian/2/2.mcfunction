#区块强加载
forceload add 3217 827
execute unless loaded 3217 69 827 run schedule function pld:beta/entity/xian/2/2 2s
execute if loaded 3217 69 827 run function pld:beta/entity/xian/2/next

#execute unless entity 680ddc9f-835f-4fe3-885d-3284abdf95ca run schedule function pld:beta/entity/xian/2/2 2s

#execute if entity 680ddc9f-835f-4fe3-885d-3284abdf95ca run function pld:beta/entity/xian/2/next