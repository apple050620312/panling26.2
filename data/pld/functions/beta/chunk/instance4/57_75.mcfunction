#区块强加载
forceload add 974 1284 912 1214
#要做的事
fill 943 59 1278 945 59 1275 minecraft:stone_bricks
setblock 943 59 1277 minecraft:glowstone
setblock 945 59 1277 minecraft:glowstone
setblock 944 58 1262 minecraft:glowstone
setblock 944 58 1249 minecraft:glowstone

fill 946 58 1227 942 58 1223 minecraft:black_wool
setblock 942 58 1227 minecraft:glowstone
setblock 942 58 1223 minecraft:glowstone
setblock 946 58 1223 minecraft:glowstone
setblock 946 58 1227 minecraft:glowstone

setblock 933 63 1279 minecraft:glowstone
setblock 919 63 1273 minecraft:glowstone
setblock 914 63 1250 minecraft:glowstone
setblock 915 63 1235 minecraft:glowstone
setblock 922 63 1221 minecraft:glowstone
setblock 932 63 1215 minecraft:glowstone
setblock 951 63 1217 minecraft:glowstone
setblock 963 61 1220 minecraft:glowstone
setblock 969 63 1229 minecraft:glowstone
setblock 971 69 1240 minecraft:glowstone
setblock 970 63 1254 minecraft:glowstone
setblock 965 63 1273 minecraft:glowstone
setblock 960 73 1278 minecraft:glowstone
setblock 951 73 1281 minecraft:glowstone
setblock 939 73 1282 minecraft:glowstone
setblock 923 73 1277 minecraft:glowstone
setblock 916 73 1268 minecraft:glowstone
setblock 915 73 1257 minecraft:glowstone
setblock 915 73 1243 minecraft:glowstone
setblock 920 73 1226 minecraft:glowstone
setblock 926 73 1218 minecraft:glowstone
setblock 965 79 1220 minecraft:glowstone
setblock 968 79 1228 minecraft:glowstone
setblock 973 79 1246 minecraft:glowstone
setblock 968 77 1263 minecraft:glowstone
setblock 969 99 1228 minecraft:glowstone
setblock 971 97 1249 minecraft:glowstone
setblock 967 95 1264 minecraft:glowstone
setblock 964 95 1273 minecraft:glowstone
setblock 956 96 1280 minecraft:glowstone
setblock 940 95 1282 minecraft:glowstone
setblock 923 95 1277 minecraft:glowstone
setblock 915 95 1267 minecraft:glowstone
setblock 915 95 1249 minecraft:glowstone
setblock 916 95 1234 minecraft:glowstone
setblock 923 95 1220 minecraft:glowstone
setblock 934 103 1221 minecraft:glowstone
setblock 931 104 1231 minecraft:glowstone
setblock 934 103 1237 minecraft:glowstone
setblock 925 103 1245 minecraft:glowstone
setblock 935 100 1247 minecraft:glowstone
setblock 935 100 1251 minecraft:glowstone
setblock 930 100 1258 minecraft:glowstone
setblock 927 104 1268 minecraft:glowstone
setblock 935 105 1273 minecraft:glowstone
setblock 946 103 1275 minecraft:glowstone
setblock 955 103 1271 minecraft:glowstone
setblock 956 104 1265 minecraft:glowstone
setblock 947 103 1263 minecraft:glowstone
setblock 942 103 1255 minecraft:glowstone
setblock 951 103 1256 minecraft:glowstone
setblock 963 104 1254 minecraft:glowstone
setblock 962 101 1245 minecraft:glowstone
setblock 961 103 1238 minecraft:glowstone
setblock 957 103 1229 minecraft:glowstone
setblock 949 104 1224 minecraft:glowstone
setblock 942 104 1222 minecraft:glowstone

setblock 928 58 1249 minecraft:black_wool
setblock 928 58 1251 minecraft:black_wool
fill 927 58 1250 929 58 1250 minecraft:black_wool

fill 961 58 1250 959 58 1250 minecraft:black_wool
setblock 960 58 1249 minecraft:black_wool
setblock 960 58 1251 minecraft:black_wool
setblock 937 57 1266 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 16, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:in4_1", sizeY: 14, sizeZ: 12, showboundingbox: 1b}
setblock 936 57 1266 redstone_block
setblock 932 57 1254 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 16, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:in4_2", sizeY: 14, sizeZ: 12, showboundingbox: 1b}
setblock 931 57 1254 redstone_block
setblock 930 57 1242 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 16, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:in4_3", sizeY: 14, sizeZ: 12, showboundingbox: 1b}
setblock 929 57 1242 redstone_block

fill 973 59 1283 913 59 1215 water replace air

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/57_75next 1s