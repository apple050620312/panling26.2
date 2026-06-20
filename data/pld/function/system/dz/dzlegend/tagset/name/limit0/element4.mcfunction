# #system temp3 = slot
# limit=0
# element=4

execute if score #system temp3 matches 0 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.helmet60.4"}'
execute if score #system temp3 matches 1 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.chestplate60.4"}'
execute if score #system temp3 matches 2 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.leggings60.4"}'
execute if score #system temp3 matches 3 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.boots60.4"}'
