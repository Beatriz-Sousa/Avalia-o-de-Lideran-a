class FormAnswer < ApplicationRecord
  has_many :question_users

  def calculate_result
    total_value = 0

    question_users.each do |question_user|
      case question_user.answer
      when 1
        total_value += 1
      when 2
        total_value += 2
      when 3
        total_value += 3
      else
        total_value += 4
      end
    end
    total_value
  end

    def result_final
      result = calculate_result
      case result
      when 18..36
        result = "Liderança frágil e pouco trabalhada."
      when 37..54
        result = "Liderança em desenvolvimento"
      when 55..72
        result = "Líder de alta performance"
        else
          puts "Faça novamente"
      end
      result
    end
end