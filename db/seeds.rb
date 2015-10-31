include RandomData

5.times do
  user = User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all


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

   post = Post.create!(

     user: users.sample,
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )

   post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
   rand(1..5).times { post.votes.create!(value: [-1, 1].sample, user: users.sample) }
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
    user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 admin = User.create!(
   name:     'Erik Lopez Adminstrator',
   email:    'eriklpzang@bloccit.com',
   password: 'bloccit12',
   role:     'admin'
 )

 member = User.create!(
    name:     'Erik Lopez Member',
    email:    'eriklpzang@bloccit.com',
    password: 'Erik0712Lpz1997',
    role: 'member'

  )


 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{User.count} users created"


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
puts "#{Vote.count} votes created"
