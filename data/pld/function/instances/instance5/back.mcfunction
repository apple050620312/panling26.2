execute as @s store result score @s instance5_relife_stone_count run clear @s nether_star{id:"panling:relive_stone"} 0

execute as @s[scores={instance5_relife=0}] if score @s instance5_relife_stone_count matches 1.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 1
execute as @s[scores={instance5_relife=1}] if score @s instance5_relife_stone_count matches 2.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 2
execute as @s[scores={instance5_relife=2}] if score @s instance5_relife_stone_count matches 4.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 4
execute as @s[scores={instance5_relife=3}] if score @s instance5_relife_stone_count matches 8.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 8
execute as @s[scores={instance5_relife=4}] if score @s instance5_relife_stone_count matches 16.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 16
execute as @s[scores={instance5_relife=5..}] if score @s instance5_relife_stone_count matches 32.. store success score @s success run clear @s nether_star{id:"panling:relive_stone"} 32


scoreboard players add @s[scores={success=1}] instance5_relife 1
tellraw @s[scores={instance5_relife=1}] [{"translate":"pl.info.instance5.relife1"},{"score":{"name": "@s","objective": "instance5_relife"}},{"translate":"pl.info.instance5.relife2"},{"text":"2"}]
tellraw @s[scores={instance5_relife=2}] [{"translate":"pl.info.instance5.relife1"},{"score":{"name": "@s","objective": "instance5_relife"}},{"translate":"pl.info.instance5.relife2"},{"text":"4"}]
tellraw @s[scores={instance5_relife=3}] [{"translate":"pl.info.instance5.relife1"},{"score":{"name": "@s","objective": "instance5_relife"}},{"translate":"pl.info.instance5.relife2"},{"text":"8"}]
tellraw @s[scores={instance5_relife=4}] [{"translate":"pl.info.instance5.relife1"},{"score":{"name": "@s","objective": "instance5_relife"}},{"translate":"pl.info.instance5.relife2"},{"text":"16"}]
tellraw @s[scores={instance5_relife=5..}] [{"translate":"pl.info.instance5.relife1"},{"score":{"name": "@s","objective": "instance5_relife"}},{"translate":"pl.info.instance5.relife2"},{"text":"32"}]

effect give @s[scores={success=1}] instant_health 1 10
tp @s[scores={success=1}] 3169 129 -1840 90 ~
scoreboard players set @s success 0