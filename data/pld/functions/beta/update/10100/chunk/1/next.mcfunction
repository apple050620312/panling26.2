#要做的事

#586 33 69
function pld:npcs/east/tong6

#101 46 185
function pld:npcs/middle/tong11

#-710 102 523
function pld:npcs/qiansi/tong6

#8 48 828
function pld:npcs/south/tong6


#区块卸载
forceload remove 586 69
forceload remove 101 185
forceload remove -710 523
forceload remove 8 828

#记分板数值增加以及bossbar修改
#function pld:beta/chunk/count
#链接下一个chunk
function pld:beta/update/10100/end