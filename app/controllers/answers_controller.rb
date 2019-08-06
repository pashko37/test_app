class AnswersController < InheritedResources::Base

  private

    def answer_params
      params.require(:answer).permit(:matter)
    end

end
