class ChangeResultType < ActiveRecord::Migration[7.1]
  def change
    remove_column :form_answers, :result
    add_column :form_answers, :result, :integer, default: 0
  end
end
