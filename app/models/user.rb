class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable (confirmation email to sign up), :lockable (lock out after so many attempts),
  # :timeoutable (log out user after so much time), :trackable and
  # :omniauthable (integrate 3rd party login i.e. sign in via facebook)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
