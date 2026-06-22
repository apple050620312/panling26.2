execute if block 2851 24 339 hopper{Items:[{components:{custom_data:{id:"panling:relive_stone"}}}]} run tellraw @s {"translate":"pl.info.test.relife"}
execute if block 2851 24 339 hopper{Items:[{components:{custom_data:{id:"panling:relive_stone"}}}]} run effect give @s instant_health 1 100
execute if block 2851 24 339 hopper{Items:[{components:{custom_data:{id:"panling:relive_stone"}}}]} run tp @s 2874 26 337 -90 ~
execute if block 2851 24 339 hopper{Items:[{components:{custom_data:{id:"panling:relive_stone"}}}]} run clear @s minecraft:potion[custom_data~{id:"panling:killpotion"}]
execute if block 2851 24 339 hopper{Items:[{components:{custom_data:{id:"panling:relive_stone"}}}]} run give @s minecraft:potion[custom_name='{"translate":"pl.item.name.killpotion"}',lore=['{"translate":"pl.item.lore.killpotiona"}','{"translate":"pl.item.lore.killpotionb"}'],custom_data={id:"panling:killpotion",CustomPotionColor:4393481,CustomPotionEffects:[{Id:7b,Amplifier:19b,Duration:20}]}]

data merge block 2851 24 339 {Items:[]}
data merge block 2851 25 339 {Items:[]}