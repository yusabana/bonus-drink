class BonusDrink
  BONUS_CONDITION_NUM = 3

  def self.total_count_for(num)
    count_for(num)
  end

  def self.count_for(num, total=0)
    return total + num if num < BONUS_CONDITION_NUM

    quotient, rest = num.divmod(BONUS_CONDITION_NUM)
    total += quotient * BONUS_CONDITION_NUM
    count_for(quotient + rest, total)
  end
end
