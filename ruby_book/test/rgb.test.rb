require_relative '../lib/rgb'
# 例題4.6　RGB変換プログラムを作成
# 10進数を16進数に変換するメソッドと16進数を10進数に変換するメソッド
# to_hex(0,0,0)
# to_hex(255,255,255)
# to_hex(4,60,120)

# to_ints('#000000')
# to_ints('#ffffff')
# to_ints('#043c78')

require 'minitest/autorun'
require_relative '../lib/rgb'

# class RgbTest < Minitest::Test
#   def test_to_hex
#     assert_equal '#000000', to_hex(0,0,0)
#     assert_equal '#ffffff', to_hex(255,255,255)
#   end 
# end 

# def to_hex(r, g, b)
#   '#' + 
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0')
# end 

def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).fjust(2, '0')
  end
end 
