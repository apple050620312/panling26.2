#区块强加载
forceload add 1226 -327 1200 -309
forceload add 1201 -360 1237 -336
forceload add 1200 -384 1218 -381
#要做的事
setblock 1200 24 -334 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:training_part1", showboundingbox: 1b}
setblock 1200 25 -334 redstone_block

data modify block 1221 27 -319 Items[{tag:{id:"panling:sword2"}}].tag set value {id:"panling:sword2",type:1,CustomModelData:22,limit:0,rare:2,branch:1,enhance_lvl:0,enhance_lvl_max:1,can_sweep:1,PLattributes:{base:{atk_pt:2.6,atk_sp:1.6}},attribute_to_enable:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.4}],display:{Name:'{"translate":"pl.item.name.sword2"}',Lore:['{"translate":"pl.lore.rare2"}','[{"translate":"pl.lore.limit0"}]','{"translate":"pl.item.lore.sword2a"}','{"translate":"pl.item.lore.sword2b"}','{"translate":"pl.lore.weapon_attribute"}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"2.6","color":"white","italic":false},{"text":"  "},{"translate":"pl.attribute.weapon_attack_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":"pl.lore.warrior1"}','{"translate":"pl.lore.weapon_skill"}','{"translate":"pl.lore.weapon_skill.sword2.1"}','{"translate":"pl.lore.weapon_skill.sword2.2"}','{"translate":"pl.lore.weapon_skill.sword2.3"}','{"translate":"pl.lore.weapon_enhance"}','{"translate":"pl.lore.unlock_tag1"}','[{"translate":"pl.enchant"},{"translate":"pl.enchant.canenchant0"}]','{"translate":"pl.lore.weapon_end"}','{"translate":"pl.lore.weaponinfo2a"}']},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"generic.attack_damage",Amount:0}],HideFlags:63,Unbreakable:1b,act:0,modify:0}
data modify block 1221 27 -319 Items[{tag:{id:"panling:axe2"}}].tag set value {id:"panling:axe2",type:1,CustomModelData:32,limit:0,rare:2,branch:0,enhance_lvl:0,enhance_lvl_max:1,PLattributes:{base:{atk_pt:3.5,atk_sp:2.0}},attribute_to_enable:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.0}],display:{Name:'{"translate":"pl.item.name.axe2"}',Lore:['{"translate":"pl.lore.rare2"}','[{"translate":"pl.lore.limit0"}]','{"translate":"pl.item.lore.axe2a"}','{"translate":"pl.item.lore.axe2b"}','{"translate":"pl.lore.weapon_attribute"}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"3.5","color":"white","italic":false},{"text":"  "},{"translate":"pl.attribute.weapon_attack_speed"},{"text":"2.0","color":"white","italic":false}]','{"translate":"pl.lore.warrior0"}','{"translate":"pl.lore.weapon_skill"}','{"translate":"pl.lore.weapon_skill.axe2.1"}','{"translate":"pl.lore.weapon_skill.axe2.2"}','{"translate":"pl.lore.weapon_skill.axe2.3"}','{"translate":"pl.lore.weapon_skill.axe2.4"}','{"translate":"pl.lore.weapon_enhance"}','{"translate":"pl.lore.unlock_tag1"}','[{"translate":"pl.enchant"},{"translate":"pl.enchant.canenchant0"}]','{"translate":"pl.lore.weapon_end"}','{"translate":"pl.lore.weaponinfo2a"}']},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"generic.attack_damage",Amount:0}],HideFlags:63,Unbreakable:1b,act:0,modify:0}

setblock 1200 22 -362 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:training_part2", showboundingbox: 1b}
setblock 1200 23 -362 redstone_block


setblock 1200 24 -384 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:training_part3", showboundingbox: 1b}
setblock 1200 25 -384 redstone_block


setblock 1219 28 -359 minecraft:light_weighted_pressure_plate destroy
setblock 1219 28 -353 minecraft:light_weighted_pressure_plate destroy
data merge block 1206 28 -353 {CustomName:'{"translate":"pl.name.dzt"}'}


#区块卸载
forceload remove 1226 -327 1200 -309
forceload remove 1201 -360 1237 -336
forceload remove 1200 -384 1218 -381
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/78_2 1t
