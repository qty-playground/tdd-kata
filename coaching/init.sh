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

# 建立第一個失敗測試
cat > test_fizzbuzz.py << 'EOF'
from fizzbuzz import fizzbuzz

def test_fizzbuzz_returns_1_for_1():
    assert fizzbuzz(1) == "1"
EOF

# 建立最小實作
cat > fizzbuzz.py << 'EOF'
def fizzbuzz(n):
    pass
EOF

echo "✅ 環境初始化完成！"
echo ""
echo "🎯 準備開始 TDD 練習："
echo "1. 執行測試：uv run pytest"
echo "2. 開始第一個紅燈階段！"