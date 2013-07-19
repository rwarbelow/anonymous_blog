require 'faker'

tags = %w('lion hamster frog cat dog pigeon dinosaur elephant')

25.times do |i|
  @post = Post.create({:title => Faker::Company.catch_phrase, :body => Faker::Lorem.paragraphs(paragraph_count = 3)})
  @post.tags << Tag.find_or_create_by_tag_description(:tag_description => tags.sample)
end
