#
execute if score #system instance5_helptk matches 315 run particle happy_villager 3157 166 -1840 1 1 1 1 100 force
execute if score #system instance5_helptk matches 315 run tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.help1"}
execute if score #system instance5_helptk matches 299 run particle happy_villager 3157 166 -1840 1 1 1 1 100 force
execute if score #system instance5_helptk matches 283 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 166 -1840 10 1 1
execute if score #system instance5_helptk matches 283 run summon armor_stand 3157 166 -1840 {Tags:["zhanglao"],CustomName:"",CustomNameVisible:0,Invulnerable:1,DisabledSlots:2039552,ArmorItems:[{id:"minecraft:chainmail_boots",count:1},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0MTEyODYxMjYzMjIsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jMTlmYzlhZTM3YmZkMTNlY2I5ZmNkMmJlNWYxOWRhZjkzOWI2OTA2ZjU5NjU3NmFlYWU1M2QxYjE1NGRlYiJ9fX0="}]}}}}],Invisible:0,NoBasePlate:1,NoGravity:1,ShowArms:1,Small:0,Pose:{Body:[0.0F,0.0F,0.0F],LeftArm:[20F,0.0F,30F],RightArm:[20F,0.0F,330F],LeftLeg:[0.0F,0.0F,0.0F],RightLeg:[0.0F,0.0F,0.0F],Head:[0.0F,0.0F,0.0F]},Rotation:[90F,0.0F]}
execute if score #system instance5_helptk matches 227 run data merge entity @e[x=3157,y=166,z=-1840,type=armor_stand,distance=..10,limit=1] {Pose:{Body:[0.0F,0.0F,0.0F],LeftArm:[30F,0.0F,30F],RightArm:[270F,0.0F,345F],LeftLeg:[0.0F,0.0F,0.0F],RightLeg:[0.0F,0.0F,0.0F],Head:[0.0F,0.0F,0.0F]},Rotation:[90F,0.0F]}
execute if score #system instance5_helptk matches 219 run summon arrow 3155 168 -1840 {Motion:[-1.6d,0.1d,-0.1d],Fire:500}
execute if score #system instance5_helptk matches 219 run summon arrow 3155 168 -1840 {Motion:[-1.3d,0.5d,0.0d],Fire:500}
execute if score #system instance5_helptk matches 219 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 217 run summon arrow 3155 168 -1840 {Motion:[-1.5d,0.8d,0.1d],Fire:500}
execute if score #system instance5_helptk matches 217 run summon arrow 3155 168 -1840 {Motion:[-1.1d,0.4d,0.1d],Fire:500}
execute if score #system instance5_helptk matches 215 run summon arrow 3155 168 -1840 {Motion:[-1.7d,0.3d,-0.2d],Fire:500}
execute if score #system instance5_helptk matches 215 run summon arrow 3155 168 -1840 {Motion:[-1.7d,0.8d,0.1d],Fire:500}
execute if score #system instance5_helptk matches 213 run summon arrow 3155 168 -1840 {Motion:[-1.6d,0.5d,0.1d],Fire:500}
execute if score #system instance5_helptk matches 213 run summon arrow 3155 168 -1840 {Motion:[-1.5d,0.6d,-0.1d],Fire:500}
execute if score #system instance5_helptk matches 213 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 211 run summon arrow 3155 168 -1840 {Motion:[-1.1d,0.8d,0.1d],Fire:500}
execute if score #system instance5_helptk matches 211 run summon arrow 3155 168 -1840 {Motion:[-1.3d,0.9d,0.0d],Fire:500}
execute if score #system instance5_helptk matches 209 run summon arrow 3155 168 -1840 {Motion:[-1.5d,0.3d,0.0d],Fire:500}
execute if score #system instance5_helptk matches 209 run summon arrow 3155 168 -1840 {Motion:[-1.8d,0.3d,-0.1d],Fire:500}
execute if score #system instance5_helptk matches 207 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 166 -1840 10 1 1
execute if score #system instance5_helptk matches 207 run tp @e[x=3157,y=166,z=-1840,type=armor_stand,distance=..5] 3160 180 -1852
execute if score #system instance5_helptk matches 207 run particle happy_villager 3157 166 -1840 1 1 1 1 10 force
execute if score #system instance5_helptk matches 199 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3160 180 -1852 10 1 1
execute if score #system instance5_helptk matches 199 run data merge entity @e[x=3160,y=180,z=-1852,type=armor_stand,distance=..10,limit=1] {Pose:{Body:[0.0F,0.0F,0.0F],LeftArm:[20F,0.0F,30F],RightArm:[270F,0.0F,345F],LeftLeg:[0.0F,0.0F,0.0F],RightLeg:[20F,20F,0.0F],Head:[0.0F,0.0F,0.0F]},Rotation:[55F,0.0F]}
execute if score #system instance5_helptk matches 199 run particle happy_villager 3160 180 -1852 1 1 1 1 100 force
execute if score #system instance5_helptk matches 197 run summon arrow 3158 181 -1851 {Motion:[-1.6d,0.9d,0.6d],Fire:400}
execute if score #system instance5_helptk matches 197 run summon arrow 3158 181 -1851 {Motion:[-1.3d,0.5d,0.8d],Fire:400}
execute if score #system instance5_helptk matches 197 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3160 180 -1852 10 1 1
execute if score #system instance5_helptk matches 195 run summon arrow 3158 181 -1851 {Motion:[-1.0d,0.7d,1.2d],Fire:400}
execute if score #system instance5_helptk matches 195 run summon arrow 3158 181 -1851 {Motion:[-1.4d,0.2d,1.2d],Fire:400}
execute if score #system instance5_helptk matches 193 run summon arrow 3158 181 -1851 {Motion:[-1.7d,0.7d,1.2d],Fire:400}
execute if score #system instance5_helptk matches 193 run summon arrow 3158 181 -1851 {Motion:[-1.1d,0.3d,0.5d],Fire:400}
execute if score #system instance5_helptk matches 191 run summon arrow 3158 181 -1851 {Motion:[-1.0d,0.4d,0.4d],Fire:400}
execute if score #system instance5_helptk matches 191 run summon arrow 3158 181 -1851 {Motion:[-1.6d,0.8d,1.1d],Fire:400}
execute if score #system instance5_helptk matches 191 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3160 180 -1852 10 1 1
execute if score #system instance5_helptk matches 189 run summon arrow 3158 181 -1851 {Motion:[-1.5d,0.3d,1.1d],Fire:400}
execute if score #system instance5_helptk matches 189 run summon arrow 3158 181 -1851 {Motion:[-1.1d,0.8d,1.3d],Fire:400}
execute if score #system instance5_helptk matches 187 run summon arrow 3158 181 -1851 {Motion:[-1.2d,0.4d,0.9d],Fire:400}
execute if score #system instance5_helptk matches 187 run summon arrow 3158 181 -1851 {Motion:[-1.5d,0.8d,0.5d],Fire:400}
execute if score #system instance5_helptk matches 185 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3160 180 -1852 10 1 1
execute if score #system instance5_helptk matches 185 run tp @e[x=3160,y=180,z=-1852,type=armor_stand,distance=..5] 3157 177.5 -1829
execute if score #system instance5_helptk matches 185 run particle happy_villager 3160 180 -1852 1 1 1 1 10 force
execute if score #system instance5_helptk matches 177 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 177.5 -1829 10 1 1
execute if score #system instance5_helptk matches 177 run data merge entity @e[x=3160,y=180,z=-1852,type=armor_stand,distance=..10,limit=1] {Pose:{Body:[0.0F,0.0F,0.0F],LeftArm:[20F,0.0F,30F],RightArm:[270F,0.0F,345F],LeftLeg:[0.0F,0.0F,0.0F],RightLeg:[0.0F,0.0F,0.0F],Head:[-20F,0.0F,0.0F]},Rotation:[125F,0.0F]}
execute if score #system instance5_helptk matches 177 run particle happy_villager 3157 177.5 -1829 1 1 1 1 100 force
execute if score #system instance5_helptk matches 175 run summon arrow 3156 179 -1830 {Motion:[-1.4d,0.5d,-1.0d],Fire:300}
execute if score #system instance5_helptk matches 175 run summon arrow 3156 179 -1830 {Motion:[-1.3d,0.8d,-0.9d],Fire:300}
execute if score #system instance5_helptk matches 175 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 177.5 -1829 10 1 1
execute if score #system instance5_helptk matches 173 run summon arrow 3156 179 -1830 {Motion:[-1.5d,1.2d,-0.5d],Fire:300}
execute if score #system instance5_helptk matches 173 run summon arrow 3156 179 -1830 {Motion:[-1.4d,0.4d,-0.5d],Fire:300}
execute if score #system instance5_helptk matches 171 run summon arrow 3156 179 -1830 {Motion:[-1.4d,0.7d,-1.7d],Fire:300}
execute if score #system instance5_helptk matches 171 run summon arrow 3156 179 -1830 {Motion:[-1.0d,1.1d,-0.6d],Fire:300}
execute if score #system instance5_helptk matches 169 run summon arrow 3156 179 -1830 {Motion:[-0.9d,1.2d,-0.5d],Fire:300}
execute if score #system instance5_helptk matches 169 run summon arrow 3156 179 -1830 {Motion:[-1.3d,0.8d,-1.6d],Fire:300}
execute if score #system instance5_helptk matches 169 run playsound pl.instance5_3fire ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 177.5 -1829 10 1 1
execute if score #system instance5_helptk matches 167 run summon arrow 3156 179 -1830 {Motion:[-1.6d,1.3d,-0.4d],Fire:300}
execute if score #system instance5_helptk matches 167 run summon arrow 3156 179 -1830 {Motion:[-1.5d,0.5d,-0.6d],Fire:300}
execute if score #system instance5_helptk matches 165 run summon arrow 3156 179 -1830 {Motion:[-1.2d,0.7d,-1.0d],Fire:300}
execute if score #system instance5_helptk matches 163 run summon arrow 3156 179 -1830 {Motion:[-1.3d,0.4d,-1.1d],Fire:300}
execute if score #system instance5_helptk matches 161 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 177.5 -1829 10 1 1
execute if score #system instance5_helptk matches 161 run kill @e[x=3157,y=177,z=-1829,type=armor_stand,distance=..5]
execute if score #system instance5_helptk matches 145 run particle happy_villager 3157 166 -1840 1 1 1 1 50 force
execute if score #system instance5_helptk matches 143 run summon armor_stand 3157 166 -1840 {Tags:["zhanglao"],CustomName:"",CustomNameVisible:0,Invulnerable:1,DisabledSlots:2039552,Invisible:0,ArmorItems:[{id:"minecraft:chainmail_boots",count:1},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0MTEyODYxMjYzMjIsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jMTlmYzlhZTM3YmZkMTNlY2I5ZmNkMmJlNWYxOWRhZjkzOWI2OTA2ZjU5NjU3NmFlYWU1M2QxYjE1NGRlYiJ9fX0="}]}}}}],NoBasePlate:1,NoGravity:1,ShowArms:1,Small:0,Pose:{Body:[0.0F,0.0F,0.0F],LeftArm:[20F,0.0F,30F],RightArm:[20F,0.0F,330F],LeftLeg:[0.0F,0.0F,0.0F],RightLeg:[0.0F,0.0F,0.0F],Head:[0.0F,0.0F,0.0F]},Rotation:[-90F,0.0F]}
execute if score #system instance5_helptk matches 143 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 166 -1840 10 1 1
execute if score #system instance5_helptk matches 143 run setblock 3147 119 -1812 minecraft:redstone_block
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3155 163 -1834
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3157 168 -1836
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3161 165 -1839
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3161 167 -1844
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3154 165 -1842
execute if score #system instance5_helptk matches 117 run summon lightning_bolt 3158 164 -1847
execute if score #system instance5_helptk matches 75 run playsound pl.instance5_pangu2 ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1840 10 1 1
execute if score #system instance5_helptk matches 75 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 75 run particle explosion 3139 173 -1840 1 1 1 1 20 force
execute if score #system instance5_helptk matches 75 run particle explosion 3139 173 -1840 1 1 1 1 20 force
execute if score #system instance5_helptk matches 59 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1845 10 1 1
execute if score #system instance5_helptk matches 59 run particle explosion 3147 182 -1845 1 1 1 1 20 force
execute if score #system instance5_helptk matches 57 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1835 10 1 1
execute if score #system instance5_helptk matches 57 run particle explosion 3147 182 -1835 1 1 1 1 20 force
execute if score #system instance5_helptk matches 55 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 55 run particle explosion 3139 173 -1840 1 1 1 1 20 force
execute if score #system instance5_helptk matches 55 run playsound pl.instance5_pangu2 ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1840 10 1 1
execute if score #system instance5_helptk matches 53 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1845 10 1 1
execute if score #system instance5_helptk matches 53 run particle explosion 3147 182 -1845 1 1 1 1 20 force
execute if score #system instance5_helptk matches 51 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1835 10 1 1
execute if score #system instance5_helptk matches 51 run particle explosion 3147 182 -1835 1 1 1 1 20 force
execute if score #system instance5_helptk matches 45 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 45 run particle explosion 3139 173 -1840 1 1 1 1 20 force
execute if score #system instance5_helptk matches 41 run particle explosion 3147 182 -1845 1 1 1 1 50 force
execute if score #system instance5_helptk matches 41 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1845 10 1 1
execute if score #system instance5_helptk matches 41 run tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.help2"}
execute if score #system instance5_helptk matches 41 run playsound pl.instance5_pangu1 ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1840 10 1 1
execute if score #system instance5_helptk matches 41 run kill @e[x=2992,y=125,z=-2000,dx=271,dy=5,dz=303,type=!player,type=!armor_stand]
execute if score #system instance5_helptk matches 41 run kill @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=ghast]
execute if score #system instance5_helptk matches 37 run particle explosion 3147 182 -1835 1 1 1 1 50 force
execute if score #system instance5_helptk matches 37 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1835 10 1 1
execute if score #system instance5_helptk matches 37 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1843 10 1 1
execute if score #system instance5_helptk matches 37 run particle explosion 3146 178 -1843 1 1 1 1 50 force
execute if score #system instance5_helptk matches 33 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1837 10 1 1
execute if score #system instance5_helptk matches 33 run particle explosion 3146 178 -1837 1 1 1 1 50 force
execute if score #system instance5_helptk matches 33 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1837 10 1 1
execute if score #system instance5_helptk matches 33 run particle explosion 3146 178 -1837 1 1 1 1 50 force
execute if score #system instance5_helptk matches 29 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3146 178 -1843 10 1 1
execute if score #system instance5_helptk matches 29 run particle explosion 3146 178 -1843 1 1 1 1 50 force
execute if score #system instance5_helptk matches 29 run particle explosion 3147 182 -1835 1 1 1 1 50 force
execute if score #system instance5_helptk matches 29 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1835 10 1 1
execute if score #system instance5_helptk matches 25 run particle explosion 3147 182 -1845 1 1 1 1 50 force
execute if score #system instance5_helptk matches 25 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3147 182 -1845 10 1 1
execute if score #system instance5_helptk matches 21 run playsound entity.generic.explode ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3139 173 -1840 10 1 1
execute if score #system instance5_helptk matches 21 run particle explosion 3139 173 -1840 1 1 1 1 50 force
execute if score #system instance5_helptk matches 5 as @e[x=3157,y=166,z=-1840,type=armor_stand,distance=..5] at @s run tp @s ~ ~30 ~
execute if score #system instance5_helptk matches 5 run playsound pl.instance5.teleport ambient @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3157 166 -1840 10 1 1
execute if score #system instance5_helptk matches 5 run particle happy_villager 3157 166 -1840 1 1 1 1 200 force
execute if score #system instance5_helptk matches 1 run kill @e[x=3157,y=196,z=-1840,type=armor_stand,distance=..5]
execute if score #system instance5_helptk matches 1 run function pld:instances/instance5/help2