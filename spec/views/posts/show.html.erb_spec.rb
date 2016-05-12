require 'rails_helper'

RSpec.describe "posts/show.html.erb", type: :view do
  let(:post) { create(:post) }

  before do
    assign(:post, post)
    render
  end

  it "shows a header" do
    assert_select "h1", text: "#{post.title}", count: 1
  end

  it "shows a subheader" do
    assert_select "h2", text: "#{post.subtitle}", count: 1
  end

  it "shows the paragraph content" do
    assert_select "p", text: "#{post.content}", count: 1
  end
end
