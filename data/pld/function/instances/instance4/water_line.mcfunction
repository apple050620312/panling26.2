#哭霸体内水位
execute if score #system instance4_bosshp matches 7 run fill 937 82 1222 951 95 1235 minecraft:water
execute if score #system instance4_bosshp matches 6 run fill 937 94 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 6 run fill 937 82 1222 951 93 1235 minecraft:water
execute if score #system instance4_bosshp matches 5 run fill 937 92 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 5 run fill 937 82 1222 951 91 1235 minecraft:water
execute if score #system instance4_bosshp matches 4 run fill 937 90 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 4 run fill 937 82 1222 951 89 1235 minecraft:water
execute if score #system instance4_bosshp matches 3 run fill 937 88 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 3 run fill 937 82 1222 951 87 1235 minecraft:water
execute if score #system instance4_bosshp matches 2 run fill 937 86 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 2 run fill 937 82 1222 951 85 1235 minecraft:water
execute if score #system instance4_bosshp matches 1 run fill 937 84 1222 951 95 1235 minecraft:air
execute if score #system instance4_bosshp matches 1 run fill 937 82 1222 951 83 1235 minecraft:water
execute if score #system instance4_bosshp matches 0 run fill 937 82 1222 951 95 1235 minecraft:air

#哭霸体外水位
execute if score #system instance4_bosshp matches 7 run fill 973 60 1283 913 61 1215 air replace water
execute if score #system instance4_bosshp matches 7 run fill 973 62 1283 913 63 1215 air replace water
execute if score #system instance4_bosshp matches 7 run fill 973 64 1283 913 65 1215 air replace water
execute if score #system instance4_bosshp matches 7 run fill 973 66 1283 913 67 1215 air replace water
execute if score #system instance4_bosshp matches 7 run fill 973 68 1283 913 69 1215 air replace water
execute if score #system instance4_bosshp matches 7 run fill 973 70 1283 913 71 1215 air replace water

execute if score #system instance4_bosshp matches 6 run fill 973 60 1283 913 61 1215 water replace air
execute if score #system instance4_bosshp matches 6 run fill 973 62 1283 913 63 1215 air replace minecraft:water

execute if score #system instance4_bosshp matches 5 run fill 973 62 1283 913 63 1215 water replace air
execute if score #system instance4_bosshp matches 5 run fill 973 64 1283 913 65 1215 air replace minecraft:water

execute if score #system instance4_bosshp matches 4 run fill 973 64 1283 913 65 1215 water replace air
execute if score #system instance4_bosshp matches 4 run fill 973 66 1283 913 67 1215 air replace minecraft:water

execute if score #system instance4_bosshp matches 3 run fill 973 66 1283 913 67 1215 water replace air
execute if score #system instance4_bosshp matches 3 run fill 973 68 1283 913 69 1215 air replace minecraft:water

execute if score #system instance4_bosshp matches 2 run fill 973 68 1283 913 69 1215 water replace air
execute if score #system instance4_bosshp matches 2 run fill 973 70 1283 913 71 1215 air replace minecraft:water

execute if score #system instance4_bosshp matches 1 run fill 973 70 1283 913 71 1215 water replace air

function pld:instances/instance4/set_lilypad/radom

