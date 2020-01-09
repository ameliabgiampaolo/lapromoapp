require 'rails_helper'

RSpec.describe "comensal/diners/edit", type: :view do
  before(:each) do
    @comensal_diner = assign(:comensal_diner, Diner.create!())
  end

  it "renders the edit comensal_diner form" do
    render

    assert_select "form[action=?][method=?]", comensal_diner_path(@comensal_diner), "post" do
    end
  end
end
