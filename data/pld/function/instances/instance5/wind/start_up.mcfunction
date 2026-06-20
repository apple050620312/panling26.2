scoreboard players set @s instance5_wind 1
bossbar set pl:instance5_wind visible true

tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.wind"}
forceload add 3095 -1830 3096 -1845
#前
clone 3092 110 -1848 3094 111 -1846 3153 131 -1830
#红
clone 3092 110 -1845 3099 115 -1843 3123 153 -1820
#蓝
clone 3092 110 -1842 3094 112 -1841 3115 138 -1867
#白
clone 3092 110 -1840 3094 114 -1838 3076 131 -1866
#青
clone 3092 110 -1837 3095 112 -1834 3068 174 -1816
#背部
clone 3092 110 -1848 3094 111 -1846 3142 201 -1841
#左角
clone 3092 110 -1833 3093 112 -1831 3158 187 -1847
#右角
clone 3092 110 -1833 3093 112 -1831 3158 187 -1835

summon end_crystal 3154 132 -1829
summon end_crystal 3070 175 -1814
summon end_crystal 3129 156 -1819
summon end_crystal 3143 202 -1840
summon end_crystal 3116 139 -1866
summon end_crystal 3159 188 -1847
summon end_crystal 3077 132 -1865
summon end_crystal 3159 188 -1833

schedule clear pld:instances/instance5/wind/action
function pld:instances/instance5/wind/action