# 多様体論セミナー記録

## セミナー記録
こちらをご覧ください↓\
https://hyrodium.github.io/manifold-seminar/

## 実行方法
### clone
```
git clone git@github.com:hyrodium/manifold-seminar.git
cd manifold-seminar
julia
```

### 当日に更新する場合
REPL上で実行
```julia
# push!(LOAD_PATH, ".")
using HyrodiumSeminar
addimg()  # クリップボード上にスクリーンショットがある状態で実行
```

### 日付を指定して更新する場合
REPL上で実行
```julia
# push!(LOAD_PATH, ".")
using HyrodiumSeminar, Dates
addimg(Date(2021,10,02))  # クリップボード上にスクリーンショットがある状態で実行
```
