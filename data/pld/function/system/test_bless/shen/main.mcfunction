title @s actionbar {"translate":"pl.info.test_bless.shen_acting"}

#scoreboard players set @s bless_cool 9600
#异步
scoreboard players set @s bless_cool 2400
give @s minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}],id:"panling:shen_test_bless",CustomModelData:10,display:{Name:'{"translate":"pl.item.name.shen_test_bless0"}',Lore:['{"translate":"pl.item.lore.shen_test_blessa"}','{"translate":"pl.item.lore.shen_test_blessb"}','{"translate":"pl.item.lore.shen_test_blessc"}','{"translate":"pl.item.lore.shen_test_blessd"}']}}
advancement revoke @s only pld:system/test_bless/shen