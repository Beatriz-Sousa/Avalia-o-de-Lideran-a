class User < ApplicationRecord
  belongs_to :form_answer, optional: true
  # has_many :question_users

  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable
  include DeviseTokenAuth::Concerns::User

  # 
  #   end
  #   value
  # end
  


end