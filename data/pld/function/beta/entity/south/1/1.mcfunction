#区块强加载
forceload add 7 814
execute unless loaded 7 50 814 run schedule function pld:beta/entity/south/1/1 2s
execute if loaded 7 50 814 run function pld:beta/entity/south/1/next
#execute unless entity e1d41cf9-a4aa-4155-8b37-9df0a7646561 run schedule function pld:beta/entity/south/1/1 2s
#execute if entity e1d41cf9-a4aa-4155-8b37-9df0a7646561 run function pld:beta/entity/south/1/next