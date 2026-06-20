#检测背包空格与获取元素数量
function pld:system/test_inv/invmain
#失敗1:背包空间不足
#信息
tellraw @s[scores={inv_remain=0}] {"translate":"pl.info.zf_cook_fault","color":"red"}
#音效-失敗
playsound minecraft:block.fire.extinguish ambient @s[scores={inv_remain=0}] ~ ~ ~ 1000

#扣除鱼
execute store success score @s zfsuccess run clear @s[scores={inv_remain=1..}] minecraft:cod[custom_data={id:"panling:fish"}] 1
#给予烤鱼
give @s[scores={zfsuccess=1}] minecraft:cooked_cod[minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.item.name.job2food1"}',lore=['{"translate":"pl.item.lore.job2food1a"}','{"translate":"pl.item.lore.food_buff_confliction"}','{"translate":"pl.item.lore.job2food1b"}','{"translate":"pl.item.lore.job2food1c"}','{"translate":"pl.item.lore.job2food1d"}'],custom_data={id:"panling:job2food1"}]

#信息-成功
tellraw @s[scores={zfsuccess=1}] {"translate":"pl.info.zf_cook_success","color":"green"}
playsound minecraft:entity.arrow.hit_player player @a[scores={zfsuccess=1}] ~ ~ ~ 1000

advancement grant @s[scores={zfsuccess=1}] only pld:other/ld_cook
#重置阵法成功判定
scoreboard players set @s zfsuccess 0