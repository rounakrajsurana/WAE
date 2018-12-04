require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should validate presence of complain" do
		requests = Request.new
		assert !requests.valid?
		assert_equal ["can't be blank"], requests.errors[:complain]
	end

end
