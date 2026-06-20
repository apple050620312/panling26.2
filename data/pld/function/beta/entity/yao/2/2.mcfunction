#区块强加载
forceload add 2661 898
execute unless loaded 2661 91 898 run schedule function pld:beta/entity/yao/2/2 2s
execute if loaded 2661 91 898 run function pld:beta/entity/yao/2/next


#execute unless entity 6b4e36c7-af7f-4c44-ac8a-ea3b1fb9dc7f run schedule function pld:beta/entity/yao/2/2 2s
#execute if entity 6b4e36c7-af7f-4c44-ac8a-ea3b1fb9dc7f run function pld:beta/entity/yao/2/next