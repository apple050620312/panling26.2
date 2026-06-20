# MIGRATION PROGRESS

此檔案用於追蹤《夢迴盤靈》RPG 資料包升級至 Minecraft 26.2 (Pack Format 107) 的進度。

## 狀態總覽
- **起始版本**: 1.20.1 / 1.19
- **目標版本**: 26.2
- **目前進度**: 初始化階段

## 模組處理進度

| 模組 (子資料夾) | 處理狀態 | S2T / 中轉英 | 組件升級 | 巨集優化 | 備註 / 待辦事項 (Todo) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pack.mcmeta` | 已完成 | - | - | - | pack_format: 107 |
| 目錄重新命名 | 已完成 | - | - | - | 複數改為單數完成 |
| `minecraft/tags` | 已完成 | 無需轉換 | 不適用 | - | 已確認內部無簡中字串 |
| `pld/function` (根目錄) | 已完成 | 已轉換 | 不適用 | 不適用 | `load.mcfunction` / `tick.mcfunction` 完成簡轉繁 |
| `pld/function/adv` | 已完成 | 無需轉換 | 不適用 | 不適用 | 無中文字串與舊版 NBT |
| `pld/function/beta` | 已完成 | 無需轉換 | 不適用 | 不適用 | 無中文字串與舊版 NBT |
| `pld/function/equipment_lock` | 已完成 | 已轉換 | 已轉換 | 不適用 | 大量 NBT 已透過腳本轉為物品組件 |
| `pld/function/instances` | 已完成 | 已轉換 | 已轉換 | 不適用 | `summon` 等指令之裝備 NBT 已更新為新版物品組件，中文提示已轉繁 |
| `pld/function/monsters` | 已完成 | 已轉換 | 已轉換 | 不適用 | `summon` 之裝備 NBT 已升級，且繁體中文已套用 |
| `pld/function/npcs` | 已完成 | 已轉換 | 已轉換 | 不適用 | 大量村民交易 `Offers` 與 `CustomName` NBT 升級為新版物品組件格式，中文轉繁 |
| `pld/function/pre` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/pvp` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/selections` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/system` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/test` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/thanks` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/function/ticks` | 待處理 | 待處理 | 待處理 | 待處理 | |
| `pld/tags` | 已完成 | 無需轉換 | 不適用 | - | 已確認內部無簡中字串 |

## 遇到的技術阻礙與 Todo
- [ ] 將舊版的簡體系統字串提取，並建立對照表以防轉換為英文時出現遺漏。
- [ ] 目錄名稱修正 (如 `functions` -> `function`) 需要透過指令全面移動。
