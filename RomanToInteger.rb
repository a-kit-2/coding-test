# ローマ数字は、I、V、X、L、C、D、M の7つの異なる記号で表されます。
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# たとえば、2はローマ数字でIIと書き、2つの1を足すだけです。 
# 12はXIIと書きますが、これは単にX+IIです。 27という数字はXXVII、つまりXX+V+IIと書かれています。
# ローマ数字は通常、左から右へ最大から最小へと書かれます。
# ただし、4の数字はIIIIではありません。その代わり、数字の4はIVと書かれています。 
# 1は5の前にあるので、それを差し引いて4にします。
# 同じ原則が、IXと書かれた数字の9にも適用されます。減算が使用される6つのインスタンスがあります。
# IをV(5)とX(10)の前に置くと、4と9を作ることができます。
# XをL(50)とC(100)の前に置くと、40と90になります。
# CをD(500)とM(1000)の前に置くと、400と900になります。
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

def roman_to_int(s)
  result = 0
  left = 10000
  s.chars{|roman|
    case roman
    when "I"
      result += 1
    when "V"
      if left == "I"
        result += 4 - 1
      else
        result += 5
      end
    when "X"
      if left == "I"
        result += 9 - 1
      else
        result += 10
      end
    when "L"
      if left == "X"
        result += 40 - 10
      else
        result += 50
      end
    when "C"
      if left == "X"
        result += 90 - 10
      else
        result += 100
      end
    when "D"
      if left == "C"
        result += 400 - 100
      else
        result += 500
      end
    when "M"
      if left == "C"
        result += 900 - 100
      else
        result += 1000
      end
    else
      result += 0
    end
    left = roman
  }
  return result
end

puts roman_to_int("III")








