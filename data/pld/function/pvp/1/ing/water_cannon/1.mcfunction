#关闭水炮弹激活
setblock 1318 99 -1831 minecraft:gold_block

#装填特效 fallingsand


#60tick后
execute if score #system pvpevent matches 2 run schedule function pld:pvp/1/ing/water_cannon/1_2 60t



