require 'rails_helper'

RSpec.describe "comensal/diners/new", type: :view do
  before(:each) do
    assign(:comensal_diner, Diner.new())
  end

  it "renders new comensal_diner form" do
    render

    assert_select "form[action=?][method=?]", comensal_diners_path, "post" do
    end
  end
end
