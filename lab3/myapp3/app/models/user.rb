class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  has_many:articles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
