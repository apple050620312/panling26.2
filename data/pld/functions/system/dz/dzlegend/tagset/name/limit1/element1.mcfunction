# #system temp3 = slot
# limit=1
# element=1

execute if score #system temp3 matches 0 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.helmet61.1"}'
execute if score #system temp3 matches 1 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.chestplate61.1"}'
execute if score #system temp3 matches 2 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.leggings61.1"}'
execute if score #system temp3 matches 3 run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.boots61.1"}'
