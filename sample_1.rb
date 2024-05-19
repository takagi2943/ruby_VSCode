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

# 配列の要素をれんけつして1つの文字列にする時はjoinメソッドを使用することも可
chars = ['a','b','c']
puts chars.join