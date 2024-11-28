class FormAnswer < ApplicationRecord
  belongs_to :form
  belongs_to :user
  has_many :question_users

  after_save :update_answered_status

  def user
    if self.question_users.present?
      self.question_users.last.user
    end
  end

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

    self.update(result: total_value)
    total_value
  end

  def result_display
    case result
    when 18..36
      text = "Liderança frágil e pouco trabalhada."
      description = "Sua liderança está em um estágio inicial. A forma como você gerencia sua equipe precisa de mais desenvolvimento e prática."
    when 37..54
      text = "Liderança em desenvolvimento."
      description = "Você está no caminho certo! Sua liderança está em crescimento, mas há áreas que ainda precisam ser melhoradas."
    when 55..72
      text = "Líder de alta performance."
      description = "Parabéns! Você demonstrou habilidades excepcionais de liderança, com forte capacidade de influenciar e motivar sua equipe."
    else
      text = "Não atingiu pontos necessários."
      description = "Parece que você ainda não atingiu os pontos mínimos para uma avaliação adequada. Tente novamente."
    end
    { text: text, description: description }
  end

  def update_answered_status
    if question_users.any?
      update_column(:answered, true)
    else
      update_column(:answered, false)
    end
  end

end