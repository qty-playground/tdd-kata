#!/bin/bash

# TDD Kata 環境初始化腳本

echo "🚀 初始化 FizzBuzz kata 練習環境..."

# 檢查 Python 是否安裝
if ! command -v python3 &> /dev/null; then
    echo "❌ 錯誤：未找到 Python3，請先安裝 Python"
    exit 1
fi

# 檢查 uv 是否安裝
if ! command -v uv &> /dev/null; then
    echo "❌ 錯誤：未找到 uv，請先安裝 uv"
    echo "安裝指令：curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi

echo "✅ Python 和 uv 已安裝"

# 初始化 Python 專案
echo "📦 初始化 Python 專案..."
uv init --name fizzbuzz

# 加入測試依賴
echo "📦 安裝測試依賴..."
uv add pytest

# 檢查虛擬環境是否建立
if [ ! -d ".venv" ]; then
    echo "❌ 錯誤：虛擬環境未建立"
    exit 1
fi

echo "✅ 虛擬環境已建立"

# 建立練習分支
PRACTICE_BRANCH="practice-$(date +%Y%m%d-%H%M%S)"
echo "🌿 建立練習分支：$PRACTICE_BRANCH"
git checkout -b "$PRACTICE_BRANCH"

# 環境準備完成，等待學生開始編寫程式碼

echo "✅ 環境初始化完成！"
echo ""
echo "🎯 準備開始 TDD 練習："
echo "📍 目前在練習分支：$PRACTICE_BRANCH"
echo "📝 現在請告訴教練你準備好了，教練會指導你建立第一個測試"
echo ""
echo "💡 提示：完成練習後可切回 main 分支：git checkout main"