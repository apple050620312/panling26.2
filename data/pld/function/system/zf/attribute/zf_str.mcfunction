scoreboard players set @s zf_str 0

#===========================基础阵法强度 1位小数 add ===========================#

function #pld:zf/str/base

#===========================阵法强度 +x% 百分比 multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和

scoreboard players set @s zf_l6 0

function #pld:zf/str/multiply_base

scoreboard players operation @s zf_str_middle = @s zf_str
scoreboard players operation @s zf_str_middle *= @s zf_l6
scoreboard players operation @s zf_str_middle /= 100 int
scoreboard players operation @s zf_str += @s zf_str_middle



#===========================最终阵法强度 +x% 百分比 multiply===========================#

function #pld:zf/str/multiply
#===========================最终阵法强度 +x 1位小数 final_add===========================#

function #pld:zf/str/final_add

#除10 变回整数
scoreboard players operation @s zf_str /= 10 int
