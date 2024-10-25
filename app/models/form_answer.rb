class FormAnswer < ApplicationRecord
  has_many :question_user

  def calculate_result
    value = 0
    question_user.each do |question_user|
      case question_user.answer
      when 'option_1' 
        value += 1
      when 'option_2'
        value += 2
      when 'option_3'
        value += 3
      else += 4
      end
      value
    end
end

  def show_result
    total = calculate_result
    case total
    when 18..36
      "Liderança frágil e pouco trabalhada."
    when 37..54
      "Liderança em desenvolvimento."
    else 55..72
      "Líder de alta performance."
  end
