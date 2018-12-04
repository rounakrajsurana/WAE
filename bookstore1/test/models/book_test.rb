require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should validate presence of name" do
		books = Book.new
		assert !books.valid?
		assert_equal ["can't be blank"], books.errors[:name]
	end

	test "should validate uniqueness of name" do
		old_books = books(:one)
		books = Book.new name: old_books.name
		assert !books.valid?
		assert_equal ["has already been taken"], books.errors[:name]
  end
  
end
