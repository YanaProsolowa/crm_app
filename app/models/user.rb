class User < ActiveRecord::Base
  before_create :create_role

  has_many :users_roles
  has_many :roles, :through => :users_roles

  has_many :orders
  has_many :customers, :through => :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,
            presence: true,
            length: { maximum: 50 }
  validates :otch,
            presence: true,
            length: { maximum: 50 }
  validates :surname,
            presence: true,
            length: { maximum: 50 }
  private
  def create_role
    self.roles << Role.find_by_name("user")
  end
end
