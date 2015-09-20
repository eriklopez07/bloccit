include RandomData

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end

topics = Topic.all


20.times do
  SponsoredPost.create!(
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      price: RandomData.random_price
  )
end

sponsoredposts = SponsoredPost.all




 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"

 10.times do
   Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: RandomData.random_price
  )
end
advertisements = Advertisement.all
puts "Finished Ads seed"
puts "#{Advertisement.count} Ads created."
