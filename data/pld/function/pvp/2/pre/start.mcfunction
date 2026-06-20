
#隊伍、pvp状态
team join attack @a[scores={pvp_team=3}]
team join defence @a[scores={pvp_team=4}]
scoreboard players set @a[scores={pvp_team=3..4}] inpvp 1
scoreboard players set @a[scores={pvp_team=3..4}] inbuy_area 0
scoreboard players set @a[scores={pvp_team=3..4}] feather_mainland -1
#重置玩家复活状态
scoreboard players set @a[scores={pvp_team=3..4}] pvp_relife_tick -1


spawnpoint @a[team=attack] 1870 44 -1788
spawnpoint @a[team=defence] 1870 44 -1821

tp @a[scores={pvp_team=3}] 1870 44 -1788 180 0
tp @a[scores={pvp_team=4}] 1870 44 -1821 0 0

execute as @a[team=attack,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed
execute as @a[team=defence,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed


#重置悬赏情况
advancement revoke @a[team=attack] only pld:system/pvp/rewarded
advancement revoke @a[team=defence] only pld:system/pvp/rewarded



forceload add 1870 -1792
setblock 1870 44 -1792 air
setblock 1870 44 -1785 minecraft:stone_bricks
forceload remove 1870 -1792

forceload add 1870 -1817
setblock 1870 44 -1817 air
setblock 1870 44 -1824 minecraft:oak_planks
forceload remove 1870 -1817

#种树
forceload add 1849 -1875 1896 -1771
clone 1845 32 -1801 1854 34 -1791 1845 121 -1801
clone 1891 16 -1826 1898 27 -1817 1891 105 -1826 
clone 1852 32 -1786 1864 42 -1773 1852 121 -1786
clone 1850 16 -1830 1864 31 -1819 1850 105 -1830 
clone 1874 32 -1835 1886 42 -1825 1874 121 -1835 
clone 1880 32 -1822 1890 41 -1811 1880 121 -1822 
clone 1868 16 -1795 1877 28 -1785 1868 105 -1795 
clone 1881 16 -1808 1890 31 -1796 1881 105 -1808 
clone 1874 16 -1835 1886 31 -1825 1874 105 -1835 
clone 1863 16 -1816 1874 31 -1805 1863 105 -1816 
clone 1852 16 -1786 1864 31 -1773 1852 105 -1786 
clone 1845 16 -1801 1854 31 -1791 1845 105 -1801
clone 1863 32 -1816 1874 37 -1805 1863 121 -1816 
clone 1887 16 -1790 1898 31 -1780 1887 105 -1790 
clone 1855 32 -1847 1866 46 -1834 1855 121 -1847
clone 1880 16 -1822 1890 31 -1811 1880 105 -1822 
clone 1887 32 -1790 1898 40 -1780 1887 121 -1790 
clone 1855 16 -1847 1867 31 -1833 1855 105 -1847 
clone 1850 32 -1830 1864 34 -1819 1850 121 -1830 
clone 1881 32 -1808 1890 41 -1796 1881 120 -1808 
clone 1855 16 -1847 1867 31 -1833 1855 105 -1847 
forceload remove 1849 -1875 1896 -1771

#重置地图-进攻方胜利条件
scoreboard players set #system pvp2_kill_tree 0
scoreboard players set #system pvp2_kill_tree1 0
scoreboard players set #system pvp2_kill_tree2 0
scoreboard players set #system pvp2_kill_tree3 0
scoreboard players set #system pvp2_kill_tree4 0
scoreboard players set #system pvp2_kill_tree5 0
scoreboard players set #system pvp2_kill_tree6 0
scoreboard players set #system pvp2_kill_tree7 0
scoreboard players set #system pvp2_kill_tree8 0
scoreboard players set #system pvp2_kill_tree9 0
scoreboard players set #system pvp2_kill_tree10 0
scoreboard players set #system pvp2_kill_tree11 0

#世界-开战
scoreboard players set #system pvpevent 4
scoreboard players operation #system pvpevent_tick = #system pvpevent_all
scoreboard players set #system pvp2_spitem_tick 1200
tellraw @a[team=normal] {"translate":"pl.info.world_notice1"}
tellraw @a[team=normal] {"translate":"pl.info.pvp2_notice_inpvp"}
tellraw @a[team=normal] {"translate":"pl.info.world_notice2"}

title @a[team=attack] title {"translate":"pl.info.title_pvp_begin"}
title @a[team=defence] title {"translate":"pl.info.title_pvp_begin"}

execute as @a[team=attack] run attribute @s attack_damage modifier remove panling:mod_101_0_0_0_0
execute as @a[team=defence] run attribute @s attack_damage modifier remove panling:mod_101_0_0_0_0