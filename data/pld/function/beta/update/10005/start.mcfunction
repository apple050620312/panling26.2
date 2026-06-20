forceload add 3194 816 3194 812
forceload add 1315 42
forceload add 1221 -319
forceload add 14 -908
fill 3194 91 817 3194 90 817 glowstone
fill 3195 91 816 3195 90 816 glowstone
fill 3194 91 815 3194 90 815 glowstone
fill 3193 91 816 3193 90 816 glowstone
fill 3193 91 815 3193 90 815 minecraft:mossy_cobblestone_wall[waterlogged=false]
fill 3195 91 815 3195 90 815 minecraft:mossy_cobblestone_wall[waterlogged=false]
fill 3195 91 817 3195 90 817 minecraft:mossy_cobblestone_wall[waterlogged=false]
fill 3193 91 817 3193 90 817 minecraft:mossy_cobblestone_wall[waterlogged=false]
data modify block 1221 27 -319 Items[{tag:{id:"panling:sword2"}}].tag set value {id:"panling:sword2",type:1,CustomModelData:22,limit:0,rare:2,branch:1,enhance_lvl:0,enhance_lvl_max:1,can_sweep:1,PLattributes:{base:{atk_pt:2.6,atk_sp:1.6}},attribute_to_enable:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.4}],display:{Name:'{"translate":"pl.item.name.sword2"}',Lore:['{"translate":"pl.lore.rare2"}','[{"translate":"pl.lore.limit0"}]','{"translate":"pl.item.lore.sword2a"}','{"translate":"pl.item.lore.sword2b"}','{"translate":"pl.lore.weapon_attribute"}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"2.6","color":"white","italic":false},{"text":"  "},{"translate":"pl.attribute.weapon_attack_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":"pl.lore.warrior1"}','{"translate":"pl.lore.weapon_skill"}','{"translate":"pl.lore.weapon_skill.sword2.1"}','{"translate":"pl.lore.weapon_skill.sword2.2"}','{"translate":"pl.lore.weapon_skill.sword2.3"}','{"translate":"pl.lore.weapon_enhance"}','{"translate":"pl.lore.unlock_tag1"}','[{"translate":"pl.enchant"},{"translate":"pl.enchant.canenchant0"}]','{"translate":"pl.lore.weapon_end"}','{"translate":"pl.lore.weaponinfo2a"}']},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"generic.attack_damage",Amount:0}],HideFlags:63,Unbreakable:1b,act:0,modify:0}
data modify block 1221 27 -319 Items[{tag:{id:"panling:axe2"}}].tag set value {id:"panling:axe2",type:1,CustomModelData:32,limit:0,rare:2,branch:0,enhance_lvl:0,enhance_lvl_max:1,PLattributes:{base:{atk_pt:3.5,atk_sp:2.0}},attribute_to_enable:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.0}],display:{Name:'{"translate":"pl.item.name.axe2"}',Lore:['{"translate":"pl.lore.rare2"}','[{"translate":"pl.lore.limit0"}]','{"translate":"pl.item.lore.axe2a"}','{"translate":"pl.item.lore.axe2b"}','{"translate":"pl.lore.weapon_attribute"}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"3.5","color":"white","italic":false},{"text":"  "},{"translate":"pl.attribute.weapon_attack_speed"},{"text":"2.0","color":"white","italic":false}]','{"translate":"pl.lore.warrior0"}','{"translate":"pl.lore.weapon_skill"}','{"translate":"pl.lore.weapon_skill.axe2.1"}','{"translate":"pl.lore.weapon_skill.axe2.2"}','{"translate":"pl.lore.weapon_skill.axe2.3"}','{"translate":"pl.lore.weapon_skill.axe2.4"}','{"translate":"pl.lore.weapon_enhance"}','{"translate":"pl.lore.unlock_tag1"}','[{"translate":"pl.enchant"},{"translate":"pl.enchant.canenchant0"}]','{"translate":"pl.lore.weapon_end"}','{"translate":"pl.lore.weaponinfo2a"}']},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"generic.attack_damage",Amount:0}],HideFlags:63,Unbreakable:1b,act:0,modify:0}
setblock 14 32 -908 minecraft:command_block{Command:"tp @p[distance=..3,scores={dragon=1,bird=1,tiger=1,turtle=1}] 308 34 -735"} destroy

setblock 1315 150 42 air
forceload remove 14 -908
forceload remove 1315 42
forceload remove 1221 -319
forceload remove 3194 816 3194 812
function pld:beta/update/10005/end

