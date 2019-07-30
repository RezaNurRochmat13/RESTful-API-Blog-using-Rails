# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds Users data
# User.create!([
#     {
#         name: "Manggala P",
#         address: "San Fransisco CA",
#         phone_number: "62 8566787662"
#     },
#     {
#         name: "Nashihun A",
#         address: "Canada US",
#         phone_number: "62 8566787663"
#     },
#     {
#         name: "Maghfirah S",
#         address: "Rio De Janiero",
#         phone_number: "62 8566787665"
#     },
#     {
#         name: "Haris A",
#         address: "Guatemala",
#         phone_number: "62 8566787669"
#     },
#     {
#         name: "Dian Sigit P",
#         address: "San Fransisco CA",
#         phone_number: "62 8566787668"
#     }
# ])
Post.create!([
    {
        posts_name: "Clean Code Handbook",
        description_posts: "Clean Code Robert C Martin",
        user_id: 1
    },
    {
        posts_name: "Phyton Masters",
        description_posts: "Phyton Masters",
        user_id: 2
    },
    {
        posts_name: "Golang Beginners",
        description_posts: "Golang Beginners",
        user_id: 3
    },
    {
        posts_name: "Rust Beginners",
        description_posts: "Rust Beginners",
        user_id: 4
    },
    {
        posts_name: "Ruby Beginners",
        description_posts: "Ruby Beginners",
        user_id: 5
    }
])
