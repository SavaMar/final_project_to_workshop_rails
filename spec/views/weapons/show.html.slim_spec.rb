require 'rails_helper'

RSpec.describe "weapons/show", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :image => "",
      :description => "MyText",
      :price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
