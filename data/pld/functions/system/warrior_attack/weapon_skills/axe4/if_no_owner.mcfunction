#查找这个marker是否有owner
#没有就kill
tag @s add blood_tag
execute as @e[scores={blooded=1},tag=monster] if score @s blood_uid = @e[tag=blood_tag,limit=1] blood_uid run tag @s add the_owner
execute unless entity @e[tag=the_owner] run kill @s
tag @e[scores={blooded=1},tag=monster,tag=] remove the_owner
tag @s remove blood_tag