class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name,
            presence: true,
            length: { minimum: 2, maximum: 20 }
  validates :last_name,
            presence: true,
            length: { minimum: 2, maximum: 20 }
end
