context 'Validations' do
  let(:post) { build(:post) }

  it 'creates succesfully' do 
    expect(post).to be_valid
  end

  it 'is not valid without a category' do 
    post.category_id = nil
    expect(post).not_to be_valid
  end

  it 'is not valid without a title' do 
    post.title = nil
    expect(post).not_to be_valid
  end

  it 'is not valid  without a user_id' do
    post.user_id = nil
    expect(post).not_to be_valid
  end

  it 'is not valid  with a title, shorter than 5 characters' do 
    post.title = 'a' * 4
    expect(post).not_to be_valid
  end

  it 'is not valid  with a title, longer than 255 characters' do 
    post.title = 'a' * 260
    expect(post).not_to be_valid
  end

  it 'is not valid without a content' do 
    post.content = nil
    expect(post).not_to be_valid
  end

  it 'is not valid  with a content, shorter than 20 characters' do 
    post.content = 'a' * 10
    expect(post).not_to be_valid
  end

  it 'is not valid  with a content, longer than 1000 characters' do 
    post.content = 'a' * 1050
    expect(post).not_to be_valid
  end
end 