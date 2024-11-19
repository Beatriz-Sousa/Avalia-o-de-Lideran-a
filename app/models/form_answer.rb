class FormAnswer < ApplicationRecord
  belongs_to :form
  has_many :question_users

  after_save :update_answered_status

  def user
    if self.question_users.present?
      self.question_users.last.user
    end
  end

  def calculate_result
    total_value = 0

    # # Itera sobre as respostas relacionadas (question_users)
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

    self.update(result: total_value)
    total_value
  end

  def result_display
    case result
    when 18..36
      result = "Liderança frágil e pouco trabalhada."
    when 37..54
      result = "Liderança em desenvolvimento."
    when 55..72
      result = "Líder de alta performance."
      else
        print("Não atingiu pontos necessários.")
    end
    result
  end

  def update_answered_status
    if question_users.any?
      update_column(:answered, true)
    else
      update_column(:answered, false)
    end
  end

end

