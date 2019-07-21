# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds Users data
User.create!([
    {
        name: "Manggala P",
        address: "San Fransisco CA",
        phone_number: "62 8566787662"
    },
    {
        name: "Nashihun A",
        address: "Canada US",
        phone_number: "62 8566787663"
    },
    {
        name: "Maghfirah S",
        address: "Rio De Janiero",
        phone_number: "62 8566787665"
    },
    {
        name: "Haris A",
        address: "Guatemala",
        phone_number: "62 8566787669"
    },
    {
        name: "Dian Sigit P",
        address: "San Fransisco CA",
        phone_number: "62 8566787668"
    }
])
