scoreboard players set #system instance5_skillx 0
scoreboard players set #system instance5_phase 1
kill @e[tag=instance5_skill,type=armor_stand]
summon armor_stand 3131 115 -1830 {Tags:["instance5_skill"]}
#喊话
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.skills"}
execute if score #system instance5_bosshp matches 1 run tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.4_skills"}
scoreboard players set #system instance5_helptk 3600
#技能1
schedule function pld:instances/instance5/skill 2s
#技能2
schedule function pld:instances/instance5/skill2 4s
#技能3
execute if score #system instance5_bosshp matches 1 run schedule function pld:instances/instance5/skill3 6s
#技能4
execute if score #system instance5_bosshp matches 1 run schedule function pld:instances/instance5/skill4 8s