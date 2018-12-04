class Request < ApplicationRecord
    validates_presence_of :complain
    belongs_to :user
    has_many :comments, dependent: :destroy
end
