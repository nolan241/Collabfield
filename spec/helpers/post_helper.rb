context '#post_format_partial_path' do
  it "returns a home_page partial's path" do
    helper.stub(:current_page?).and_return(true)
    expect(helper.post_format_partial_path).to (
      eq 'posts/post/home_page'
    )
  end

  it "returns a branch_page partial's path" do
    helper.stub(:current_page?).and_return(false)
    expect(helper.post_format_partial_path).to (
      eq 'posts/post/branch_page'
    )
  end
end