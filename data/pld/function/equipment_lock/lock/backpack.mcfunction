data modify storage pld:system Temp set value []
data modify storage pld:system Temp set from entity @s Inventory
data remove storage pld:system Temp[{Slot:0b}]
data remove storage pld:system Temp[{Slot:1b}]
data remove storage pld:system Temp[{Slot:2b}]
data remove storage pld:system Temp[{Slot:3b}]
data remove storage pld:system Temp[{Slot:4b}]
data remove storage pld:system Temp[{Slot:5b}]
data remove storage pld:system Temp[{Slot:6b}]
data remove storage pld:system Temp[{Slot:7b}]
data remove storage pld:system Temp[{Slot:8b}]
data modify storage pld:system Temp[{Slot:9b}].Slot set value 0b
data modify storage pld:system Temp[{Slot:10b}].Slot set value 1b
data modify storage pld:system Temp[{Slot:11b}].Slot set value 2b
data modify storage pld:system Temp[{Slot:12b}].Slot set value 3b
data modify storage pld:system Temp[{Slot:13b}].Slot set value 4b
data modify storage pld:system Temp[{Slot:14b}].Slot set value 5b
data modify storage pld:system Temp[{Slot:15b}].Slot set value 6b
data modify storage pld:system Temp[{Slot:16b}].Slot set value 7b
data modify storage pld:system Temp[{Slot:17b}].Slot set value 8b
data modify storage pld:system Temp[{Slot:18b}].Slot set value 9b
data modify storage pld:system Temp[{Slot:19b}].Slot set value 10b
data modify storage pld:system Temp[{Slot:20b}].Slot set value 11b
data modify storage pld:system Temp[{Slot:21b}].Slot set value 12b
data modify storage pld:system Temp[{Slot:22b}].Slot set value 13b
data modify storage pld:system Temp[{Slot:23b}].Slot set value 14b
data modify storage pld:system Temp[{Slot:24b}].Slot set value 15b
data modify storage pld:system Temp[{Slot:25b}].Slot set value 16b
data modify storage pld:system Temp[{Slot:26b}].Slot set value 17b
data modify storage pld:system Temp[{Slot:27b}].Slot set value 18b
data modify storage pld:system Temp[{Slot:28b}].Slot set value 19b
data modify storage pld:system Temp[{Slot:29b}].Slot set value 20b
data modify storage pld:system Temp[{Slot:30b}].Slot set value 21b
data modify storage pld:system Temp[{Slot:31b}].Slot set value 22b
data modify storage pld:system Temp[{Slot:32b}].Slot set value 23b
data modify storage pld:system Temp[{Slot:33b}].Slot set value 24b
data modify storage pld:system Temp[{Slot:34b}].Slot set value 25b
data modify storage pld:system Temp[{Slot:35b}].Slot set value 26b
execute if data storage pld:system Temp[{components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{components:{custom_data:{act:1}}}].tag.modify set value 1
data modify block ~ 255 ~ Items set from storage pld:system Temp

