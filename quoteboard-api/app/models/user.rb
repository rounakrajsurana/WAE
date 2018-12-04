class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quotations, dependent: :destroy

  before_save :assign_default_role

  def is_member?
    self.role == 'member'
  end

  def is_admin?
    self.role == 'admin'
  end

  def set_admin
    self.role = 'admin'
  end

  def set_member
    self.role = 'member'
  end

  private

  def assign_default_role
    self.role = 'member' if self.role.nil?
  end
end
