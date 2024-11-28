class QuestionUser < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :form
end
