require 'test_helper'
include FactoryGirl::Syntax::Methods
class ReservationTest < ActiveSupport::TestCase
  test "should not save reservation with same time" do
    reservation_one = create(:first)
    reservation_two = build(:second)
    reservation_three = build(:third)
    reservation_four = build(:fourth)
    reservation_five = build(:fifth)
    reservation_six = build(:sixth)
    reservation_seven = build(:seventh)
    reservation_eight = build(:eighth)
    reservation_nine = build(:ninth)
    assert_not reservation_two.save, "Second saved in same time as first"
    assert_not reservation_three.save, "Third saved in same time as first"
    assert_not reservation_four.save, "Fourth saved in same time as first"
    assert_not reservation_five.save, "Fifth saved in same time as first"
    assert reservation_six.save, "Sixth not saved but have to"
    assert reservation_seven.save, "Second table not saved but have to" 
    assert reservation_eight.save, "second table new time not saved but have to"
    assert_not reservation_nine.save, "second table saved in same time as seven and eight"
  end
end
