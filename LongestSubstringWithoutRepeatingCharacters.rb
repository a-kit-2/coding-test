# 文字列sが与えられた場合、
# 文字を繰り返さずに最長の部分文字列の長さを見つけます。
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

def length_of_longest_substring(s)
  len = s.length
  return len if len <= 1

  max = 1
  idx = 1
  str = s[0]
  while idx < len
    if str.include?(s[idx])
      str = update_str(str, s[idx])
      str += s[idx]
    else
      str += s[idx]
      max = str.length if str.length > max
    end
    idx += 1
  end

  max
end

def update_str(str, ch)
  idx = str.index(ch)
  str[idx + 1..-1]
end

p length_of_longest_substring("abcabcbb")