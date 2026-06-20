#经验
experience add @s 5 points
execute unless entity @s[x=1213,y=28,z=-344,distance=..50] run advancement grant @s only pld:experience/job/2/zf1
#武器技觸發判据
function pld:equipment_lock/equipment/armor/set_bonus/when_weapon_skill_enable
