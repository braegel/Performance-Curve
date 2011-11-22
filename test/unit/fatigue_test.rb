require 'test_helper'

class FatigueTest < ActiveSupport::TestCase
  test "Fatigue attributes must not be empty" do
    f = Fatigue.new
    assert f.invalid? 
    assert f.errors[:user_id].any?
    assert f.errors[:fatigue].any?
  end
end
