#武器分支
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword1"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword1/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword2"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword2/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword3"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword3/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword4"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword4/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword5"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword5/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:sword6"}}}] at @s run function pld:system/warrior_attack/weapon_skills/sword6/active/main

execute as @s[nbt={SelectedItem:{tag:{id:"panling:axe2"}}}] at @s run function pld:system/warrior_attack/weapon_skills/axe2/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:axe3"}}}] at @s run function pld:system/warrior_attack/weapon_skills/axe3/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:axe4"}}}] at @s run function pld:system/warrior_attack/weapon_skills/axe4/main
execute as @s[nbt={SelectedItem:{tag:{id:"panling:axe5"}}}] at @s run function pld:system/warrior_attack/weapon_skills/axe5/main

#武器技激活判据
execute if score @s skill_success matches 1 run function pld:equipment_lock/equipment/armor/set_bonus/when_weapon_skill_enable

scoreboard players set @s skill_success 0