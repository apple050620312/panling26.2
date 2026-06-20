title @s actionbar {"translate":"pl.info.test_bless.shen_acting"}

#scoreboard players set @s bless_cool 9600
#异步
scoreboard players set @s bless_cool 2400
give @s minecraft:carrot_on_a_stick[unbreakable={},minecraft:enchantments={protection:1},minecraft:custom_model_data={floats:[10]},custom_name='{"translate":"pl.item.name.shen_test_bless0"}',lore=['{"translate":"pl.item.lore.shen_test_blessa"}','{"translate":"pl.item.lore.shen_test_blessb"}','{"translate":"pl.item.lore.shen_test_blessc"}','{"translate":"pl.item.lore.shen_test_blessd"}'],custom_data={id:"panling:shen_test_bless"}]
advancement revoke @s only pld:system/test_bless/shen