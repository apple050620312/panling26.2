#区块强加载
forceload add -313 588
execute unless loaded -313 60 588 run schedule function pld:beta/entity/south/3/3 2s
execute if loaded -313 60 588 run function pld:beta/entity/south/3/next

#execute unless entity 08a055c6-2710-4278-b728-0191a7b7d78c run schedule function pld:beta/entity/south/3/3 2s
#execute if entity 08a055c6-2710-4278-b728-0191a7b7d78c run function pld:beta/entity/south/3/next