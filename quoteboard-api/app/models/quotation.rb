class Quotation < ApplicationRecord
  belongs_to :user

  def self.search(query) 
    where('quote ILIKE ?', "%#{query}%")
  end
end
