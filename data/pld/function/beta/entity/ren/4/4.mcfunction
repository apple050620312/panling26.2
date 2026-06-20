#区块强加载
forceload add 1737 99

execute unless loaded 1737 166 99 run schedule function pld:beta/entity/ren/4/4 2s
execute if loaded 1737 166 99 run function pld:beta/entity/ren/4/next

#execute unless entity d182ab03-6974-493c-ac31-07f0fda7d1c4 run schedule function pld:beta/entity/ren/4/4 2s
#execute unless entity e590ab5b-08ff-4779-ad99-46d5bec3011e run schedule function pld:beta/entity/ren/4/4 2s
#execute if entity d182ab03-6974-493c-ac31-07f0fda7d1c4 if entity e590ab5b-08ff-4779-ad99-46d5bec3011e run function pld:beta/entity/ren/4/next