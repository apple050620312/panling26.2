#区块强加载
forceload add 2647 925
execute unless loaded 2647 108 925 run schedule function pld:beta/entity/yao/3/3 2s
execute if loaded 2647 108 925 run function pld:beta/entity/yao/3/next

#execute unless entity 2db3e8dc-968e-4257-9877-dc72206a0df6 run schedule function pld:beta/entity/yao/3/3 2s
#execute unless entity 1ac83086-0dec-4cbf-819b-76e8dac31bc4 run schedule function pld:beta/entity/yao/3/3 2s


#execute if entity 2db3e8dc-968e-4257-9877-dc72206a0df6 if entity 1ac83086-0dec-4cbf-819b-76e8dac31bc4 run function pld:beta/entity/yao/3/next