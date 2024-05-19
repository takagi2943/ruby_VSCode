# numbers = [1,2,3,4,5,6]
# even_numbers = numbers.select { |n| n.even?}
# puts even_numbers

# numbers = [1,2,3,4,5,6]
# non_multiples_of_three = numbers.reject {|n| n % 3 == 0}
# puts non_multiples_of_three

# numbers = [1,2,3,4,5]
# new_numbers = []
# numbers.each {|n| new_numbers << n * 10}
# new_numbers

# numbers = [1,2,3,4,5]
# new_numbers = numbers.map { |n| n * 10 }
# puts new_numbers

# 各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返すメソッド
# numbers = [1,2,3,4,5,6]
# even_numbers =numbers.select { |n| n.even? }
# puts even_numbers

# ブロックの戻り値が真になった要素を除外した配列を返す
# 言い換えるとブロックの戻り値が偽である要素を集めるメソッド
# numbers = [1,2,3,4,5,6]
# # 3の倍数を除外する（3の倍数以外を集める）
# non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
# puts non_multiples_of_three

# # ブロックの戻り値が真になった最初の要素を返す
# numbers = [1,2,3,4,5,6]
# # ブロックの戻り値が最初に真になった要素を返す
# even_number = numbers.find { |n| n.even? }
# puts even_number

# # 要素の合計を求めるメソッド
# numbers = [1,2,3,4]
# puts numbers.sum

# # ブロックを与えるとブロックパラメータに各要素が順番に渡され、ブロックの戻り値が合計される
# numbers = [1,2,3,4]
# # 各要素を2倍しながら合計
# puts numbers.sum { |n| n * 2 }

# # 初期値は0だが引数で0以外の初期値を指定することもできる
# numbers = [1,2,3,4]
# # 各要素に5を指定する
# puts numbers.sum(5)

# 合計するのは数値には限らない
# 初期値を文字列を指定すると、各要素の文字列が+で連結されて1つの文字列になる
# chars = ['a','b','c']
# # 文字列を連結する
# puts chars.sum('')

# # 配列の要素をれんけつして1つの文字列にする時はjoinメソッドを使用することも可
# chars = ['a','b','c']
# puts chars.join

# # 第1引数に区切り文字を指定することもできる
# chars = ['a','b','c']
# # 区切り文字をハイフンにして各要素を連結
# puts chars.join('-')

# 連結する際はto_sメソッドで要素を文字列に変換してから連結する
# # そのため数値など文字列以外の要素が含まれていても大丈夫
# chars = ['a','b','c',4]
# # 配列に数値が含まれていても連結可能（to_sメソッドで文字列に変換されるため）
# puts chars.join

# # 単純な要素の連結であればsumメソッドよりjoinメソッドを使った方がシンプルで分かりやすい
# # ただし、sumメソッドを使うと、下記のように空文字列("")以外の初期値（先頭の文字列をあたえたり、ブロック内で文字列を加工したりすることが可能）
# chars = ['a','b','c']
# # 先頭に'>'を付け、各要素を大文字にして連結
# puts chars.sum('>') { |c| c.upcase }

# &:メソッド名の書き方に変換不可
# [1,2,3,4,5,6].select { |n| n % 3 == 0 }
# [9,10,11,12].map { |n| n.to_s(16)}
# [1,2,3,4].map do |f|
#   m = n * 4
#   m.to_s
# end 

# &とシンボルを使ってもっと簡潔に書く
# mapメソッドやselectメソッドにブロックを渡す代わりに、&:メソッド名という引数を渡している
# 条件
# ブロックパラメータが1個だけある
# ブロックの中で呼び出すメソッドには引数がない
# ブロックの中では、ブロックパラメータに対してメソッドを1回呼び出す以外の処理がない
# ['ruby','java','python'].map { |s| s.upcase }
# # 置き換えると・・・
# puts ['ruby','java','python'].map(&:upcase)

# [1,2,3,4,5,6].select { |n| n.odd? }
# # 置き換えると・・・  
# puts [1,2,3,4,5,6].select(&:odd?)

# 範囲
# 1..5
# 1...5
# 'a'..'e'
# 'a'...'e'
# puts (1..5).class
# puts (1...5).class

# ..を使うと5が範囲に含まれる（1以上5以下）
# range = 1..5
# puts range.include?(0)
# puts range.include?(1)
# puts range.include?(4.9)
# puts range.include?(5)
# puts range.include?(6)

# ...を使うと5が範囲に含まれない（1以上5未満）
# range = 1...5
# puts range.include?(0)
# puts range.include?(1)
# puts range.include?(4.9)
# puts range.include?(5)
# puts range.include?(6)

# なお、範囲オブジェクトを変数に入れず直接include?のようなメソッドを
# 呼び出すときは範囲オブジェクトを（）で囲む必要があるので注意
# ()で囲まずにメソッドを呼び出すとエラー
# 1..5.include?(1)

# ()で囲めばエラーにならない
# puts (1..5).include?(1)

# これは、..や...の優先順位が低いため起こる
# （演算子の優先順位については2.4.2を参照）
# （）で囲まなかった方のコードは次のように解釈されたためエラーが発生した
# 1..(5.include?)(1)

# 範囲オブジェクトを標準でサポートするプログラミング言語はちょっと珍しいかもしれない
# Rubyでは範囲オブジェクトを使うと便利な場面がよくある

# 配列や文字列の一部を抜き出す
# 配列に対して添え字の代わりに範囲オブジェクトを渡すと、指定した範囲の要素を取得することができる
# a = [1,2,3,4,5]
# # 2番目から4番目までの要素を取得する
# puts a[1..3] 

# # 文字列に対しても同じような操作ができる
# a = 'abcdef'
# # 2文字目から4文字目までを抜き出す
# puts a[1..3]

# puts (1..5).to_a

# puts [*1..5]
# puts [*1...5]
# puts [* 'a'..'e']

# 例題4.6　RGB変換プログラムを作成
# 10進数を16進数に変換するメソッドと16進数を10進数に変換するメソッド
to_hex(0,0,0)
to_hex(255,255,255)
to_hex(4,60,120)

to_ints('#000000')
to_ints('#ffffff')
to_ints('#043c78')