execute unless entity @e[type=villager,x=-611,y=99,z=452,dx=42,dy=7,dz=5,tag=te33] positioned -589 104 454 run function pld:npcs/qiansi/te33
execute store result score #system count_jiang_tai_gong if entity @e[type=villager,x=-611,y=99,z=452,dx=42,dy=7,dz=5,tag=te33]
execute if score #system count_jiang_tai_gong matches 2.. positioned -589 104 454 run function pld:npcs/qiansi/te33

