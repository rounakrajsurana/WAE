require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Name and Price cannot be null" do
		book = Book.new
		assert !book.valid?
		assert_equal ["can't be blank"], book.errors[:name]
  end
  
  test "should validate uniqueness of book name" do
		old_book = book(:one)
		book = Book.new name: old_book.name
		assert !book.valid?
		assert_equal ["has already been taken"], book.errors[:name]
	end



end
