#试炼冷却
#scoreboard players set @s test_cool 12000
#异步
scoreboard players set @s test_cool 3000

tellraw @s {"translate":"pl.info.test_cool"}
function pld:test/raceeffect_check
scoreboard players set @s feather_mainland 1
scoreboard players set @s test_effectlock 0
spawnpoint @s 205 54 -1771

clear @s minecraft:potion[custom_data={id:"panling:killpotion"}]
give @s minecraft:potion[custom_name='{"translate":"pl.item.name.killpotion"}',lore=['{"translate":"pl.item.lore.killpotiona"}','{"translate":"pl.item.lore.killpotionb"}'],custom_data={id:"panling:killpotion",CustomPotionColor:4393481,CustomPotionEffects:[{Id:7b,Amplifier:19b,Duration:20}]}]

