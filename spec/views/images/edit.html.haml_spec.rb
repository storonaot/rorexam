require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyString",
      :file => "MyString",
      :ave_value => 1.5
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_file[name=?]", "image[file]"

      assert_select "input#image_ave_value[name=?]", "image[ave_value]"
    end
  end
end
