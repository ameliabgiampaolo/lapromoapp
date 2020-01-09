require 'rails_helper'

RSpec.describe "comensal/diners/show", type: :view do
  before(:each) do
    @comensal_diner = assign(:comensal_diner, Diner.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
