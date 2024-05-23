#!/bin/bash

# ディレクトリパスを指定します
directory_path="."

# 指定したディレクトリ内の'exp'で始まる全てのファイルを取得します
for old_file in $directory_path/exp*
do
    # 新しいファイル名を生成します（'exp'を'ref'に置き換えます）
    new_file="${old_file/exp/ref}"

    # ファイル名を変更します
    mv "$old_file" "$new_file"
done