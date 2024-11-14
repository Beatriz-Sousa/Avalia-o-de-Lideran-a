class AddFormToQuestionUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :question_users, :form, null: false, foreign_key: true
  end
end
