# Ruby学習プロジェクト

このプロジェクトは、Rubyプログラミング言語の学習用リポジトリです。

## プロジェクト構成

```
algorithm/
├── d/                          # 学習用ディレクトリ
│   ├── 3.rb                   # getsメソッドの基本例
│   ├── gets_examples.rb       # getsメソッドの詳細例
│   ├── output_examples.rb     # puts/printの使い方例
│   └── gets_class_example.rb  # getsメソッドのクラス詳細
├── .gitignore                 # Git除外設定
└── README.md                  # このファイル
```

## 学習内容

### 1. 入力処理（gets）
- `gets`メソッドの基本使い方
- `chomp`メソッドとの組み合わせ
- 数値への変換
- 複数行入力の処理

### 2. 出力処理（puts/print）
- `puts`と`print`の違い
- 改行の制御方法
- 配列の出力
- ベストプラクティス

### 3. メソッドの詳細
- `gets`メソッドのクラス（Kernelモジュール）
- プライベートメソッドについて
- STDINとの関係

## 実行方法

各Rubyファイルは以下のコマンドで実行できます：

```bash
# 基本的なgetsの例
ruby d/3.rb

# getsの詳細例
ruby d/gets_examples.rb

# 出力メソッドの例
ruby d/output_examples.rb

# getsメソッドのクラス詳細
ruby d/gets_class_example.rb
```

## 学習のポイント

1. **入力処理**
   - `gets`は改行文字を含む文字列を返す
   - `chomp`で改行文字を除去
   - `to_i`や`to_f`で数値に変換

2. **出力処理**
   - `puts`は自動的に改行を追加
   - `print`は改行を追加しない
   - 用途に応じて使い分ける

3. **メソッドの理解**
   - `gets`はKernelモジュールのプライベートメソッド
   - すべてのオブジェクトで使用可能
   - STDINから暗黙的に読み込み

## 今後の学習予定

- 条件分岐（if/else）
- ループ処理（while/for/each）
- 配列とハッシュ
- メソッド定義
- クラスとオブジェクト指向 