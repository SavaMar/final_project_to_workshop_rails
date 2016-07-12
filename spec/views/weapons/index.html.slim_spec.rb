require 'rails_helper'

RSpec.describe "weapons/index", type: :view do
  before(:each) do
    assign(:weapons, [
      Weapon.create!(
        :image => "",
        :description => "MyText",
        :price => 2
      ),
      Weapon.create!(
        :image => "",
        :description => "MyText",
        :price => 2
      )
    ])
  end

  it "renders a list of weapons" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
