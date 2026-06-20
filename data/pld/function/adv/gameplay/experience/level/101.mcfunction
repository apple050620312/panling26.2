scoreboard players add @s achievement_point 20
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.info.adv.lvl101"}]
tellraw @s {"translate":"pl.info.adv.lvl101.reward"} 
scoreboard players set @s tail_id1_unlocked 1

