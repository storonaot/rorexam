require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :name => "Name",
        :file => "File",
        :ave_value => 2.5
      ),
      Image.create!(
        :name => "Name",
        :file => "File",
        :ave_value => 2.5
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
