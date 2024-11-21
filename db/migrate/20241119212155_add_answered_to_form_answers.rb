class AddAnsweredToFormAnswers < ActiveRecord::Migration[7.1]
  def change
    add_column :form_answers, :answered, :boolean
  end
end
