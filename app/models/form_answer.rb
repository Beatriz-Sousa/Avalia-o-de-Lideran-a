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

    def result_final
      result = calculate_result
      case result
      when 18..36
        result = "Lider insuficiente"
      when 37..54
        result = "Desenvolvendo"
      when 55..72
        result = "Desenvolvido"
        else
          print("Faça novamente")
      end
      result
    end
end