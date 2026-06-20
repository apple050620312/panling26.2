execute as @s[scores={weapon_rare=4,weapon_branch=1,weapon_skill_sword4_switch=0}] run function pld:system/warrior_attack/weapon_skills/sword4/0
execute as @s[scores={weapon_rare=4,weapon_branch=1,weapon_skill_sword4_switch=1}] run function pld:system/warrior_attack/weapon_skills/sword4/1
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:sword4",act:1}}}]}] run function pld:system/warrior_attack/weapon_skills/sword4/clear
