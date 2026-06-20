#更新玩家箭矢强度
function pld:system/archer_damage/update
#将箭的damage设置成应当值
function pld:system/archer_damage/shoot/set_shooter
#清理进度等待下一次触发
advancement revoke @s only pld:system/arrow/use_crossbow
