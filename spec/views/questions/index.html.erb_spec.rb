require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :matter => "Matter"
      ),
      Question.create!(
        :matter => "Matter"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Matter".to_s, :count => 2
  end
end
