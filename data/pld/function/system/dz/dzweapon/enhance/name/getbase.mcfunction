#根据id获得名称 id在storage pld:system dzTemp中
execute if data storage pld:system {dzTemp:"panling:sword2"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.sword2"}'
execute if data storage pld:system {dzTemp:"panling:sword3"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.sword3"}'
execute if data storage pld:system {dzTemp:"panling:sword4"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.sword4"}'
execute if data storage pld:system {dzTemp:"panling:sword5"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.sword5"}'
execute if data storage pld:system {dzTemp:"panling:sword6"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.sword6"}'
execute if data storage pld:system {dzTemp:"panling:axe2"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.axe2"}'
execute if data storage pld:system {dzTemp:"panling:axe3"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.axe3"}'
execute if data storage pld:system {dzTemp:"panling:axe4"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.axe4"}'
execute if data storage pld:system {dzTemp:"panling:axe5"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.axe5"}'

execute if data storage pld:system {dzTemp:"panling:bow2"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.bow2"}'
execute if data storage pld:system {dzTemp:"panling:bow3"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.bow3"}'
execute if data storage pld:system {dzTemp:"panling:bow4"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.bow4"}'
execute if data storage pld:system {dzTemp:"panling:bow5"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.bow5"}'
execute if data storage pld:system {dzTemp:"panling:bow6"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.bow6"}'
execute if data storage pld:system {dzTemp:"panling:crossbow2"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.crossbow2"}'
execute if data storage pld:system {dzTemp:"panling:crossbow3"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.crossbow3"}'
execute if data storage pld:system {dzTemp:"panling:crossbow4"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.crossbow4"}'
execute if data storage pld:system {dzTemp:"panling:crossbow5"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.crossbow5"}'

execute if data storage pld:system {dzTemp:"panling:furnace4"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.furnace4"}'
execute if data storage pld:system {dzTemp:"panling:furnace5"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.furnace5"}'
execute if data storage pld:system {dzTemp:"panling:furnace6"} run data modify storage pld:system dzTemp set value '{"translate":"pl.item.name.furnace6"}'

#接口：武器基础名称
function #pld:dz/weapon/enhance/get_base_name