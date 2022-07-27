require "test_helper"

class OrderDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  enum making_status: {cannot: 0, awaiting: 1, in_production: 2, complete: 3}
  
end
