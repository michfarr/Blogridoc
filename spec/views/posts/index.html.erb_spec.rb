require 'rails_helper'

RSpec.describe "posts/index.html.erb", type: :view do
  let(:posts) { create_list(:post, 3) }

  before do
    assign(:posts, posts)
    render
  end

  it "shows a header" do
    assert_select "h1", text: "Posts Header", count: 1
  end

  it "shows a subheader" do
    assert_select "h2", text: "Posts Subheader", count: 1
  end

  it "renders all posts with titles" do
    assert_select "div.post-sub-title", count: posts.count

    posts.each do |post|
      assert_select ".post-sub-title>h3", text: post.title, count:1
    end
  end

  it "renders all posts with sub-titles" do
    assert_select "div.post-sub-title", count: posts.count

    posts.each do |post|
      assert_select ".post-sub-title>h4", text: post.subtitle, count: 1
    end
  end

  it "renders all posts with content" do
    assert_select "div.post-content", count: posts.count

    posts.each do |post|
      assert_select ".post-content>p", text: post.content, count: 1
    end
  end
end
