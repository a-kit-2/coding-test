# 文字列を32ビットの符号付き整数に変換するmyAtoi（string s）関数を実装します（C / C ++のatoi関数と同様）。
# 1. 読み込み、先頭の空白を無視します。
# 2. 次の文字（まだ文字列の最後にない場合）が '-'または ''であるかどうかを確認します。 どちらかである場合は、この文字を読んでください。
#    これにより、最終結果がそれぞれ負か正かが決まります。 どちらも存在しない場合、結果は正であると想定します。
# 3. 次の数字以外の文字または入力の終わりに達するまで、次の文字を読み込みます。文字列の残りの部分は無視されます。
# 4. これらの数字を整数に変換します（つまり、「123」-> 123、「0032」-> 32）。数字が読み取られなかった場合、整数は0です。必要に応じて符号を変更します（手順2から）。
# 5. 整数が32ビットの符号付き整数の範囲[-2^31、2^31-1]から外れている場合は、範囲内にとどまるように整数をクランプします。 
#    具体的には、-2^31未満の整数は-2^31にクランプし、231-1より大きい整数は231-1にクランプする必要があります。
# 6. 最終結果として整数を返します。
# 注意： スペース文字 ''のみが空白文字と見なされます。 先頭の空白または数字の後の文字列の残り以外の文字を無視しないでください。
# Input: s = "42"
# Output: 42
# Explanation: The underlined characters are what is read in, the caret is the current reader position.
# Step 1: "42" (no characters read because there is no leading whitespace)
#          ^
# Step 2: "42" (no characters read because there is neither a '-' nor '+')
#          ^
# Step 3: "42" ("42" is read in)
#            ^
# The parsed integer is 42.
# Since 42 is in the range [-231, 231 - 1], the final result is 42.

# @param {String} s
# @return {Integer}
def my_atoi(s)
    
end

require 'minitest/autorun'

class StringToIntegerAtoiTest < Minitest::Test
  def test_my_atoi
    assert_equal 42, my_atoi("42")
    assert_equal -42, my_atoi("   -42")
    assert_equal 4193, my_atoi("4193 with words")
    assert_equal 0, my_atoi("words and 987")
    assert_equal  -2147483648, my_atoi("-91283472332")
  end
end