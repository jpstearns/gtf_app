class User < ActiveRecord::Base
	has_many :investigations 
	has_many :applicants, :through => :cases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
