#斩下 2秒后清除本身
data merge entity @e[type=armor_stand,tag=sword_1,limit=1] {Motion:[0.0d,-10.0d,0.0d],NoGravity:0}

#范围particle 阳剑
execute as @e[tag=sword_1,limit=1] at @s run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/particle/main/init
#效果本身-承伤
execute if score #system in3_-4f_phase matches 1 as @p[tag=sword_1] at @s run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/hurt_p1
execute if score #system in3_-4f_phase matches 2 as @p[tag=sword_1] at @s run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/hurt_p2