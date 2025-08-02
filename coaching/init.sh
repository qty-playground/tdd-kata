#!/bin/bash

# TDD Kata 環境初始化腳本

echo "🚀 初始化 FizzBuzz kata 練習環境..."

# 建立 workspace 目錄
mkdir -p workspace
cd workspace

# 初始化 Python 專案
uv init --name fizzbuzz

# 加入測試依賴
uv add pytest pytest-watch

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
echo "進入練習目錄："
echo "cd workspace"
echo ""
echo "開始 TDD 循環："
echo "uv run pytest-watch"