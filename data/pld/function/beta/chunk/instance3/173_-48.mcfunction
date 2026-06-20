#区块强加载
forceload add 2775 -763 2740 -777
forceload add 2776 -742 2858 -780
forceload add 2857 -791 2810 -870
#要做的事

setblock 2736 29 -784 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:instance3_underlounges", showboundingbox: 1b}
setblock 2736 30 -784 redstone_block

setblock 2813 29 -870 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:tower1", showboundingbox: 1b}
setblock 2813 30 -870 redstone_block

setblock 2813 29 -827 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:tower1", showboundingbox: 1b}
setblock 2813 30 -827 redstone_block

setblock 2813 29 -784 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:tower1", showboundingbox: 1b}
setblock 2813 30 -784 redstone_block

setblock 2770 29 -784 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:tower1", showboundingbox: 1b}
setblock 2770 30 -784 redstone_block

#区块卸载
forceload remove 2775 -763 2740 -777
forceload remove 2776 -742 2858 -780
forceload remove 2857 -791 2810 -870
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance3/174_-57 1t