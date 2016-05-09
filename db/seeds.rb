print "Seeding database with posts..."

Post.create([
  { title: "title",   subtitle: "subtitle",   content: "content",   image: "image.jpg"  },
  { title: "title2",  subtitle: "subtitle2",  content: "content2",  image: "image2.jpg" },
  { title: "title3",  subtitle: "subtitle3",  content: "content3",  image: "image3.jpg" },
  { title: "title4",  subtitle: "subtitle4",  content: "content4",  image: "image4.jpg" },
  { title: "title5",  subtitle: "subtitle5",  content: "content5",  image: "image5.jpg" }
])

puts "seeded #{Post.count} posts!"
