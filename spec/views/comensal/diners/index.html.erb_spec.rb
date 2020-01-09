require 'rails_helper'

RSpec.describe "comensal/diners/index", type: :view do
  before(:each) do
    assign(:diners, [
      Diner.create!(),
      Diner.create!()
    ])
  end

  it "renders a list of comensal/diners" do
    render
  end
end
