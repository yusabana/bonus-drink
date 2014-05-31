class BonusDrink
  BONUS_CONDITION_NUM = 3

  # 11/3  3...2    3*3 = 9
  # 5/3   1...2    3*1 = 3
  # 3/3   1...0    3*1 = 3
  #                      1
  #                     16
  def self.total_count_for(num, total=0)
    quotient, rest = num.divmod(BONUS_CONDITION_NUM)
    total += quotient * BONUS_CONDITION_NUM
    num < BONUS_CONDITION_NUM ? total + num : total_count_for(quotient + rest, total)
  end

  # 3つずつ飲むので、3つずつ計算してボーナス分を足していく
  def self.total_count_for_while(amount)
    rest_num = amount
    dranks = 0

    while rest_num >= 3
      dranks += 3
      rest_num -= 3
      rest_num += 1
    end

    dranks + rest_num
  end
end

# 直接実行する($0 == __FILE__ と条件を入れているので、他のファイルからバレる時は実行されないが、このファイルを直接 % ruby bonus_drink.rb とやると実行される)
if $0 == __FILE__
  puts BonusDrink.total_count_for(100)
end
