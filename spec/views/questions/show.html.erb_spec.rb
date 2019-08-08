require 'rails_helper'

RSpec.describe 'questions/show', type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
                                    matter: 'Matter'
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Matter/)
  end
end
