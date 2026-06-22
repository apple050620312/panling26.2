#喊话
function pld:instances/ture_pangu/stage/4/clear_schedule
#生成npc
summon villager -407 200 -1591 {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health10"}',ActiveEffects:[{Id:11b,Duration:10000000,ShowParticles:false,Amplifier:4b}],Offers: {Recipes: [{buy:{id:"minecraft:lime_dye",count:1,components:{display:{Name:'{"translate":"pl.npc.name.final_battle.npc_earth"}',Lore:['{"translate":"pl.npc.chat1a.final_battle.npc"}']}}}, sell:{id:"minecraft:lime_dye",count:1,components:{display:{Name:'{"translate":"pl.npc.name.final_battle.npc_earth"}',Lore:['{"translate":"pl.npc.chat2a.final_battle.npc"}','{"translate":"pl.npc.chat2b.final_battle.npc"}']}}}, xp:0,uses:-2147483648,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp: 0b}]},VillagerData:{profession:"minecraft:weaponsmith",level:26,type:"minecraft:taiga"},Tags:["panling","core_npc"],NoAI:1,CustomNameVisible:1,HandItems:[{},{}],LastRestock:2147483648L,Xp:0,HandDropChances:[0.0f,0.0f],Inventory:[],Gossips:[],Silent:1b, PersistenceRequired: 1b, Attributes: [{Base: 0.0d,Name: "movement_speed"}],CanPickUpLoot: 0b, Age: 100000000,Brain: {memories:{job_site:{value:{pos:[I;47,65,199],dimension:"minecraft:overworld"}}}}}
#为npc设置血量
scoreboard players operation @e[type=villager,tag=core_npc] npc_health = #system npc_max_health

#同步bossbar
scoreboard players add #system npc_earth 1
execute store result bossbar pl:final_battle_npc_earth value run scoreboard players get #system npc_earth

#5s后执行下一个 是否缓慢tp过去？暂时否定，直接tp
schedule function pld:instances/ture_pangu/stage/5/npc/2 5s

