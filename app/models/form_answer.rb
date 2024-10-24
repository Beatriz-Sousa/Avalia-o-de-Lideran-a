class FormAnswer < ApplicationRecord
  belongs_to :form
  belongs_to :question_user
end
