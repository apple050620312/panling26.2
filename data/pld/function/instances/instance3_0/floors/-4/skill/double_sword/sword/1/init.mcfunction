#初始化
#召唤阳剑，选择对象并垂到其头上
execute as @p[tag=sword_1] at @s run summon armor_stand ~ ~2.5 ~ {Tags:["in3_skill_tag","sword_1"],NoGravity:1,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144896,Pose:{LeftArm:[0.0f, 0.0f, 0.0f]}, Invisible:1b, Small:0b, Rotation:[-180.0f, 0.0f], HandItems:[{}, {id:"minecraft:iron_axe", Count:1b, tag:{CustomModelData:1, Damage:0}}], ArmorItems:[{}, {}, {}, {}], NoBasePlate:1b}
execute as @e[type=armor_stand,tag=sword_1] at @s run summon marker ~ ~ ~ {Tags:["in3_skill_tag","sword_1_particle"]}


