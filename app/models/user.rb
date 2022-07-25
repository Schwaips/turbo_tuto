class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # default is :
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

#   We just need users in our seeds and a way to log in. Therefore, we will disable all the Devise features for our User model except two of them:

  # The feature to sign in users (:database_authenticatable)
  # The feature to validate the email and password using Devise built-in validations (:validatable)
  devise :database_authenticatable, :validatable
end
