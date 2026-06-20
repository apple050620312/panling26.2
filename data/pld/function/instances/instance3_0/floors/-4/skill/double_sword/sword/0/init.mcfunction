#初始化
#阴剑 #选择对象并垂到其头上
execute as @p[tag=sword_0] at @s run summon armor_stand ~ ~2.5 ~ {NoGravity:1,Tags:["in3_skill_tag","sword_0"],Invulnerable:1b,ShowArms:1b,DisabledSlots:4144896,Pose:{LeftArm:[0.0f, 0.0f, 0.0f]}, Invisible:1b, Small:0b, Rotation:[-180.0f, 0.0f], HandItems:[{}, {id:"minecraft:stone_sword", Count:1b, tag:{CustomModelData:1, Damage:0}}], ArmorItems:[{}, {}, {}, {}], NoBasePlate:1b}
execute as @e[type=armor_stand,tag=sword_0] at @s run summon marker ~ ~ ~ {Tags:["in3_skill_tag","sword_0_particle"]}

