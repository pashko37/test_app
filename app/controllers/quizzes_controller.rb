class QuizzesController < InheritedResources::Base

  private

    def quiz_params
      params.require(:quiz).permit(:matter)
    end

end
