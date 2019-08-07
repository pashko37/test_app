require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :matter => "Matter"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Matter/)
  end
end
