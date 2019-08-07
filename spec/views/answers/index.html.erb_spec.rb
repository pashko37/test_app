require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :matter => "Matter"
      ),
      Answer.create!(
        :matter => "Matter"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Matter".to_s, :count => 2
  end
end
