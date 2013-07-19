get '/show_all' do
  @posts = Post.all
  erb :show_all
  # Show me all posts
end

get '/show/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
  # Show me a particular post
end

get '/create_post' do
  # Show form to type in post stuff
  erb :create_post
end

post '/new_post' do
  @post = Post.new(:title => params[:post][:title], :body => params[:post][:body])
  if @post.save
    params[:tags].split(',').each do |tag|
      @post.tags << Tag.find_or_create_by_tag_description(:tag_description => tag)
    end
    erb :post
  else
    @errors = @post.errors.full_messages
    p @errors
    erb :create_post
  end
end

post '/edit_post/:post_id' do
  # Edit an existing post
end

post '/delete_post' do
  # Delete an existing post
end
















