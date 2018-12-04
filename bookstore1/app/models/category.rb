class Category < ApplicationRecord
	validates_presence_of :name
	validates_uniqueness_of :name
	has_many :books, dependent: :delete_all
end
