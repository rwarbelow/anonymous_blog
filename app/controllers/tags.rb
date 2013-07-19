post '/search_tags' do
  # Show me all posts with a given tag
  # @tags = Tag.find_by_tag_description(params[:search])
  
  @tag = Tag.find_by_tag_description(params[:search])
  if @tag == nil
    @no_results_tag = params[:search]
    erb :index
  else
    @posts = @tag.posts
    erb :show_posts
  end
end

get '/tags/:tag/posts' do
  @tag = Tag.find_by_tag_description(params[:tag])
  @posts = @tag.posts
  erb :show_posts
end
