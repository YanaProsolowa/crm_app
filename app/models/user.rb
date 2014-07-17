class User < ActiveRecord::Base
  before_create :create_role

  has_many :users_roles
  has_many :roles, :through => :users_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
  def create_role
    self.roles << Role.find_by_name("user")
  end
end
