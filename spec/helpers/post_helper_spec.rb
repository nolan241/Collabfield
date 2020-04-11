context '#update_pagination_partial_path' do
  it "returns an update_pagination partial's path" do
    posts = double('posts', :next_page => 2)
    assign(:posts, posts)
    expect(helper.update_pagination_partial_path).to(
      eq 'posts/posts_pagination_page/update_pagination'
    )
  end

  it "returns a remove_pagination partial's path" do
    posts = double('posts', :next_page => nil)
    assign(:posts, posts)
    expect(helper.update_pagination_partial_path).to(
      eq 'posts/posts_pagination_page/remove_pagination'
    )
  end
end