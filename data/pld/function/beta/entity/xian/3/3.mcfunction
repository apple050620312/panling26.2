#区块强加载
forceload add 3281 988
execute unless loaded 3281 91 988 run schedule function pld:beta/entity/xian/3/3 2s
execute if loaded 3281 91 988 run function pld:beta/entity/xian/3/next

#execute unless entity 9d8e63ab-6403-4546-9074-2946c16ffc0a run schedule function pld:beta/entity/xian/3/3 2s
#execute if entity 9d8e63ab-6403-4546-9074-2946c16ffc0a run function pld:beta/entity/xian/3/next