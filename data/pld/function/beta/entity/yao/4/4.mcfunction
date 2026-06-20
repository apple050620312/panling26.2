#区块强加载
forceload add 2723 857
execute unless loaded 2723 42 857 run schedule function pld:beta/entity/yao/4/4 2s
execute if loaded 2723 42 857 run function pld:beta/entity/yao/4/next

#execute unless entity b3129130-5fbe-4829-b075-0cb116d5c451 run schedule function pld:beta/entity/yao/4/4 2s
#execute if entity b3129130-5fbe-4829-b075-0cb116d5c451 run function pld:beta/entity/yao/4/next