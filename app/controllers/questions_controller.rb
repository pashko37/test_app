class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:matter)
    end

end
