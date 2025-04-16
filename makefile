# Utilisation : make PROGRAM=nom_du_fichier_sans_extension
# Usage: make PROGRAM=filename_without_extension
# 使用方法：make PROGRAM=拡張子なしのファイル名

PROGRAM ?= main
SRC_DIR = src

# Cible par défaut : compilation
# Default target: compilation
# デフォルトターゲット：コンパイル
all:
	cobc -x $(SRC_DIR)/$(PROGRAM).cbl

# Compile et exécute
# Compile and run
# コンパイルして実行
run: all
	./$(PROGRAM)

# Supprime les binaires générés
# Delete generated binaries
# 生成されたバイナリを削除
clean:
	rm -f $(PROGRAM)
