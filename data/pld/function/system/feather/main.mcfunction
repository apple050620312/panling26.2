
#给予玩家大陆属性
execute if entity @s[nbt={Inventory:[{tag:{id:"panling:feather",lvl:4}}]}] run attribute @s generic.movement_speed modifier add 8-8-8-8-9 "移速增加-羽毛二" 0.3 multiply_base
execute if entity @s[nbt={Inventory:[{tag:{id:"panling:feather",lvl:3}}]}] run attribute @s generic.movement_speed modifier add 8-8-8-8-8 "移速增加-羽毛一" 0.2 multiply_base
execute if entity @s[nbt={Inventory:[{tag:{id:"panling:feather",lvl:2}}]}] run attribute @s generic.movement_speed modifier add 8-8-8-8-8 "移速增加-羽毛一" 0.2 multiply_base
execute if entity @s[nbt={Inventory:[{tag:{id:"panling:feather",lvl:1}}]}] run attribute @s generic.movement_speed modifier add 8-8-8-8-8 "移速增加-羽毛一" 0.2 multiply_base

