class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Include default devise modules. Others available are:
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true, :uniqueness => { :case_sensitive => false}
  validates :role, :mobile, :presence => true
# DEALERADMIN = %w[dealer_user_edit dealer_user_view]
    ROLES = %w[admin staff]

    has_many :students

    def to_s
      email
    end
end
