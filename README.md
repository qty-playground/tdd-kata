# TDD Kata 練習室

使用 Python 和 uv 從零開始練習 TDD。

## FizzBuzz 問題描述

實作一個函數 `fizzbuzz(n)`，根據以下規則回傳結果：

- 輸入 1-100 的數字
- 3 的倍數回傳 "Fizz"
- 5 的倍數回傳 "Buzz"  
- 15 的倍數回傳 "FizzBuzz"
- 其他數字回傳數字本身的字串

範例：
- fizzbuzz(1) → "1"
- fizzbuzz(3) → "Fizz"
- fizzbuzz(5) → "Buzz"
- fizzbuzz(15) → "FizzBuzz"

## TDD 練習流程

### 學生工作流程
1. 執行 `./coaching/init.sh` 初始化環境
2. 遵循紅-綠-重構循環：
   - **紅燈**：寫失敗測試 → `git commit -m "done-red: 描述"`
   - **綠燈**：最少實作讓測試通過 → `git commit -m "done-green: 描述"`
   - **重構**：改善程式碼 → `git commit -m "done-refactor: 描述"`
3. 每階段完成向教練回報 `done-<phase>`

### 教練職責
**✅ 教練會做：**
- 指導 TDD 原則和最佳實踐
- 檢查每階段的 Git commit 品質
- 提供建設性回饋和建議
- 在偏離 TDD 時糾正方向

**🚫 教練不會做：**
- 幫學生寫程式碼
- 直接給出答案
- 代替學生思考解決方案

**⚠️ 品質把關：**
- 檢查是否越界（超出當前階段範圍）
- 確認只做必要的最小修改
- 不符標準時要求「起來重睡」
- 提供 `git reset HEAD~1` 重來

## 給 AI 智能助理
1. 環境準備：閱讀 `@coaching/kata-init.prompt`
2. 教練指導：閱讀 `@coaching/kata-coach.prompt`