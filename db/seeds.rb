print "Seeding database with posts..."

post1 = Post.create(title: "title",   subtitle: "subtitle",   content: "content",   image: "image.jpg")
post2 = Post.create(title: "title2",  subtitle: "subtitle2",  content: "content2",  image: "image2.jpg")
post3 = Post.create(title: "title3",  subtitle: "subtitle3",  content: "content3",  image: "image3.jpg")
post4 = Post.create(title: "title4",  subtitle: "subtitle4",  content: "content4",  image: "image4.jpg")
post5 = Post.create(title: "title5",  subtitle: "subtitle5",  content: "content5",  image: "image5.jpg")

puts "seeded #{Post.count} posts!"

print "Seeding database with comments..."

comment01 = Comment.create(title: "comment01", comment: "Lorem", post: post1)
comment02 = Comment.create(title: "comment02", comment: "Ipsum", post: post1)
comment03 = Comment.create(title: "comment03", comment: "Potato", post: post1)

comment04 = Comment.create(title: "comment04", comment: "Tomato", post: post2)
comment05 = Comment.create(title: "comment05", comment: "Uncle", post: post2)
comment06 = Comment.create(title: "comment06", comment: "Aunt", post: post2)

comment07 = Comment.create(title: "comment07", comment: "Bat", post: post3)
comment08 = Comment.create(title: "comment08", comment: "Cat", post: post3)
comment09 = Comment.create(title: "comment09", comment: "Charles", post: post3)

comment10 = Comment.create(title: "comment10", comment: "Barrels", post: post4)
comment11 = Comment.create(title: "comment11", comment: "Wow", post: post4)
comment12 = Comment.create(title: "comment12", comment: "This is a comment", post: post4)

comment13 = Comment.create(title: "comment13", comment: "Outstanding", post: post5)
comment14 = Comment.create(title: "comment14", comment: "Demanding", post: post5)
comment15 = Comment.create(title: "comment15", comment: "Borem", post: post5)

puts "seeded #{Comment.count} comments!"
