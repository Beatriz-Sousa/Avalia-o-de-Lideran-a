class User < ApplicationRecord
  # belongs_to :form_answer, optional: true
  has_many :question_users
  has_many :form_answers

  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable
  include DeviseTokenAuth::Concerns::User

  def form_answers
    form_answer_ids = self.question_users.pluck(:form_answer_id)
    FormAnswer.where(id: form_answer_ids)
  end

  # 
  #   end
  #   value
  # end
  


end