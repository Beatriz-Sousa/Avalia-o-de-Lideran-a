class ChangeResultToIntegerInFormAnswers < ActiveRecord::Migration[7.1]
  def change
    change_column :form_answers, :result, :integer, using: 'result::integer'
  end
end
