require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :rating => 1,
      :body => "MyText",
      :book => nil,
      :user => nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "textarea#review_body[name=?]", "review[body]"

      assert_select "input#review_book_id[name=?]", "review[book_id]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
