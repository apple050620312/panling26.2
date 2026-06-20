#基础攻速4.0
scoreboard players set @s attack_speed1 0
#===========================基础近战攻速 1位小数 add ===========================#

function #pld:attack_speed/base


#===========================近战攻速 +x% 百分比  multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和

scoreboard players set #attack_speed_multiply_base int 0

function #pld:attack_speed/multiply_base

scoreboard players operation #attack_speed_middle float1 = @s attack_speed1
scoreboard players operation #attack_speed_middle float1 *= #attack_speed_multiply_base int
scoreboard players operation #attack_speed_middle float1 /= 100 int
scoreboard players operation @s attack_speed1 += #attack_speed_middle float1

#基础攻速4.0
execute if score @s attack_speed1 matches 0 run scoreboard players set @s attack_speed1 40
