require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
end


# 11/3  3...2    3*3 = 9
# 5/3   1...2    3*1 = 3
# 3/3   1...0    3*1 = 3
#                      1
