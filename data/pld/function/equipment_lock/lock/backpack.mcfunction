data modify storage pld:system Temp set value []
data modify storage pld:system Temp set from entity @s Inventory
data remove storage pld:system Temp[{slot:0}]
data remove storage pld:system Temp[{slot:1}]
data remove storage pld:system Temp[{slot:2}]
data remove storage pld:system Temp[{slot:3}]
data remove storage pld:system Temp[{slot:4}]
data remove storage pld:system Temp[{slot:5}]
data remove storage pld:system Temp[{slot:6}]
data remove storage pld:system Temp[{slot:7}]
data remove storage pld:system Temp[{slot:8}]
data modify storage pld:system Temp[{slot:9}].Slot set value 0b
data modify storage pld:system Temp[{slot:10}].Slot set value 1b
data modify storage pld:system Temp[{slot:11}].Slot set value 2b
data modify storage pld:system Temp[{slot:12}].Slot set value 3b
data modify storage pld:system Temp[{slot:13}].Slot set value 4b
data modify storage pld:system Temp[{slot:14}].Slot set value 5b
data modify storage pld:system Temp[{slot:15}].Slot set value 6b
data modify storage pld:system Temp[{slot:16}].Slot set value 7b
data modify storage pld:system Temp[{slot:17}].Slot set value 8b
data modify storage pld:system Temp[{slot:18}].Slot set value 9b
data modify storage pld:system Temp[{slot:19}].Slot set value 10b
data modify storage pld:system Temp[{slot:20}].Slot set value 11b
data modify storage pld:system Temp[{slot:21}].Slot set value 12b
data modify storage pld:system Temp[{slot:22}].Slot set value 13b
data modify storage pld:system Temp[{slot:23}].Slot set value 14b
data modify storage pld:system Temp[{slot:24}].Slot set value 15b
data modify storage pld:system Temp[{slot:25}].Slot set value 16b
data modify storage pld:system Temp[{slot:26}].Slot set value 17b
data modify storage pld:system Temp[{slot:27}].Slot set value 18b
data modify storage pld:system Temp[{slot:28}].Slot set value 19b
data modify storage pld:system Temp[{slot:29}].Slot set value 20b
data modify storage pld:system Temp[{slot:30}].Slot set value 21b
data modify storage pld:system Temp[{slot:31}].Slot set value 22b
data modify storage pld:system Temp[{slot:32}].Slot set value 23b
data modify storage pld:system Temp[{slot:33}].Slot set value 24b
data modify storage pld:system Temp[{slot:34}].Slot set value 25b
data modify storage pld:system Temp[{slot:35}].Slot set value 26b
execute if data storage pld:system Temp[{components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{components:{custom_data:{act:1}}}].tag.modify set value 1
data modify block ~ 255 ~ Items set from storage pld:system Temp

