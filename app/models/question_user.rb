class QuestionUser < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :form
  belongs_to :form_answer

  
end
