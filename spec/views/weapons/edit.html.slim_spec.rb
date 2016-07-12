require 'rails_helper'

RSpec.describe "weapons/edit", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :image => "",
      :description => "MyText",
      :price => 1
    ))
  end

  it "renders the edit weapon form" do
    render

    assert_select "form[action=?][method=?]", weapon_path(@weapon), "post" do

      assert_select "input#weapon_image[name=?]", "weapon[image]"

      assert_select "textarea#weapon_description[name=?]", "weapon[description]"

      assert_select "input#weapon_price[name=?]", "weapon[price]"
    end
  end
end
