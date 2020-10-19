# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([ 
   {
    name: "Juan Felipe",
    lastname: "Arias",
    email: "juanfelipeariastabares007@gmail.com",
    password: "asdqwe123",
    resumeprofile: "Softwarfe developer",
    photoprofile: "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"
   }
 ])

posts = Post.create({
    description: "I love ruby on rails",
    file: "https://i2.wp.com/unaaldia.hispasec.com/wp-content/uploads/2019/07/ruby-2.png?fit=632%2C416&ssl=1",
    user: users.first,
    like: likes.first,
    comment: comments.first
})

likes = Like.create({
    users: users.first
})

comments = Comment.create({
    description: 'good pecture',
    users: users.first
})