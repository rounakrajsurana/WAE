class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :requests, dependent: :destroy
  def admin?
  self.admin == true if !self.admin.blank?
  end
  def staff?
  self.staff == true if !self.staff.blank?
  end
end
