summon marker ^1.5 ^1.0 ^ {Tags:["metal_particle_marker"]}
summon marker ^ ^1.0 ^ {Tags:["metal_particle_marker","metal_particle_middle"]}
summon marker ^-1.5 ^1.0 ^ {Tags:["metal_particle_marker"]}

execute as @e[type=marker,tag=metal_particle_marker] run function pld:system/zf/shifang/main/refined/metal/particle/loop

#如果够了 那就结束
execute as @e[type=marker,tag=metal_particle_marker] run kill @s