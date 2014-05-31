require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe "#total_count_for" do
    specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
    specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
    specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
    specify { expect(BonusDrink.total_count_for(1000)).to eq 1499 }
  end

  describe "#total_count_for_while" do
    specify { expect(BonusDrink.total_count_for_while(0)).to eq 0 }
    specify { expect(BonusDrink.total_count_for_while(3)).to eq 4 }
    specify { expect(BonusDrink.total_count_for_while(11)).to eq 16 }
    specify { expect(BonusDrink.total_count_for_while(100)).to eq 149 }
    specify { expect(BonusDrink.total_count_for_while(1000)).to eq 1499 }
  end
end
