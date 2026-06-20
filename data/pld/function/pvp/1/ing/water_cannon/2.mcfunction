#关闭水炮弹激活
setblock 1453 104 -1819 minecraft:gold_block

#装填特效

#60tick后
execute if score #system pvpevent matches 2 run schedule function pld:pvp/1/ing/water_cannon/2_2 60t


