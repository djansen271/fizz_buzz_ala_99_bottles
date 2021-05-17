shared_examples 'role' do
  it 'responds to :lyrics' do
    expect(@role_player).to respond_to(:lyrics)
  end
end