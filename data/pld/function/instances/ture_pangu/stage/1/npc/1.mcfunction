#喊话
#生成npc
#/summon Villager -292 155 -1520 {Profession:1,CustomName:♥♥♥♥♥♥♥♥♥♥,CustomNameVisible:1,Offers:{Recipes:[{uses:-2000000000,rewardExp:0b,buy:{id:"minecraft:dye",Damage:10s,Count:100b,tag:{display:{Name:"死士-五行金陣陣眼：",Lore:["§7§o快，掩護我前往陣法設置處！"]}}},sell:{id:"minecraft:dye",Damage:10s,Count:100b,tag:{display:{Name:"死士-五行金陣陣眼：",Lore:["§7§o我身上的陣法不能承受太多攻擊。","§7§o拜託了，請將敵人阻攔在五步之外！"]}}}}]},Attributes:[{Name:generic.movementSpeed,Base:0.0},{Name:generic.maxHealth,Base:30000}],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Career:1,CareerLevel:26}
summon villager -292 155 -1520 {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health10"}',ActiveEffects:[{Id:11b,Duration:10000000,ShowParticles:false,Amplifier:4b}],Offers: {Recipes: [{buy:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"translate":"pl.npc.name.final_battle.npc_metal"}',Lore:['{"translate":"pl.npc.chat1a.final_battle.npc"}']}}}, buyB:{id:"minecraft:air",Count:1b}, sell:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"translate":"pl.npc.name.final_battle.npc_metal"}',Lore:['{"translate":"pl.npc.chat2a.final_battle.npc"}','{"translate":"pl.npc.chat2b.final_battle.npc"}']}}}, xp:0,uses:-2147483648,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp: 0b}]},VillagerData:{profession:"minecraft:weaponsmith",level:26,type:"minecraft:taiga"},Tags:["panling","core_npc"],NoAI:1,CustomNameVisible:1,HandItems:[{},{}],LastRestock:2147483648L,Xp:0,HandDropChances:[0.0f,0.0f],Inventory:[],Gossips:[],Silent:1b, PersistenceRequired: 1b, Attributes: [{Base: 0.0d,Name: "movement_speed"}],CanPickUpLoot: 0b, Age: 100000000,Brain: {memories:{"minecraft:job_site":{value:{pos:[I;47,65,199],dimension:"minecraft:overworld"}}}}}

#为npc设置血量
scoreboard players operation @e[type=villager,tag=core_npc] npc_health = #system npc_max_health

#同步bossbar
scoreboard players add #system npc_metal 1
execute store result bossbar pl:final_battle_npc_metal value run scoreboard players get #system npc_metal


#5s后执行下一个 是否缓慢tp过去？暂时否定，直接tp
schedule function pld:instances/ture_pangu/stage/1/npc/2 5s

