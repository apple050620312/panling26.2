#剧情内容
playsound pl.final_story.ares_1 record @a 1370 155 445 2 1 1
summon armor_stand 1370 155 445 {CustomName:"",CustomNameVisible:0,Invulnerable:1,DisabledSlots:2039552,ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0MTEyODYxMjYzMjIsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jMTlmYzlhZTM3YmZkMTNlY2I5ZmNkMmJlNWYxOWRhZjkzOWI2OTA2ZjU5NjU3NmFlYWU1M2QxYjE1NGRlYiJ9fX0="}]}}}}],Invisible:0,NoBasePlate:1,NoGravity:1,ShowArms:1,Small:0,Rotation:[180f],Pose:{Head:[52f,0f,0f],LeftLeg:[15f,0f,336f],RightLeg:[20f,0f,28f],LeftArm:[13f,0f,200f],RightArm:[18f,0f,163f]}}

#对话延迟
scoreboard players set #system tick_end_story 10
#跳跃对话
scoreboard players add #system conversation_end_story 1