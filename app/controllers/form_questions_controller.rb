class FormQuestionsController < BaseCrudController
  before_action :_admin_authorized, only: [:create, :destroy, :update]
    def crud_model
      FormQuestion
    end
end
