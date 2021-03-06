require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :name => "MyString",
      :file => "MyString",
      :ave_value => 1.5
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_file[name=?]", "image[file]"

      assert_select "input#image_ave_value[name=?]", "image[ave_value]"
    end
  end
end
