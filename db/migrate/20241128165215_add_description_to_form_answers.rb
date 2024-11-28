class AddDescriptionToFormAnswers < ActiveRecord::Migration[7.1]
  def change
    add_column :form_answers, :description, :string
  end
end
