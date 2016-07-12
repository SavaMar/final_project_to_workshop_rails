require 'rails_helper'

RSpec.describe "weapons/new", type: :view do
  before(:each) do
    assign(:weapon, Weapon.new(
      :image => "",
      :description => "MyText",
      :price => 1
    ))
  end

  it "renders new weapon form" do
    render

    assert_select "form[action=?][method=?]", weapons_path, "post" do

      assert_select "input#weapon_image[name=?]", "weapon[image]"

      assert_select "textarea#weapon_description[name=?]", "weapon[description]"

      assert_select "input#weapon_price[name=?]", "weapon[price]"
    end
  end
end
