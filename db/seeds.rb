# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create([{
    title: 'Maison de campagne',
    nbChambres: 4,
    nbCouchages: 256,
    description: "C'est énorme",
    complementAdresse: "",
    street: "1 place de l'Europe",
    zip: "31000",
    city: "Toulouse",
    price: 2300,
    photos: "{ 1: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.bXBIEi_yeMJ2zwco8V1GwgHaEE%26pid%3DApi&f=1' }",
    presentation: "Quos placeat est voluptatibus odit minima deleniti voluptas dicta. Maxime eligendi repellendus ratione velit error neque officia. Consequatur reiciendis tempora est labore nemo qui. Consequatur modi consequuntur modi ut est saepe cupiditate cum.",
    lattitude: "43.604260",
    longitude: "1.4436700"
},
{
    title: 'Appartement parisien',
    nbChambres: 4,
    nbCouchages: 256,
    description: "C'est énorme",
    complementAdresse: "",
    street: "4 rue de rome",
    zip: "91000",
    city: "Paris",
    price: 2300,
    photos: "{ 1: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.bXBIEi_yeMJ2zwco8V1GwgHaEE%26pid%3DApi&f=1' }",
    presentation: "Quos placeat est voluptatibus odit minima deleniti voluptas dicta. Maxime eligendi repellendus ratione velit error neque officia. Consequatur reiciendis tempora est labore nemo qui. Consequatur modi consequuntur modi ut est saepe cupiditate cum.",
    lattitude: "43.604260",
    longitude: "1.4436700"
}])

p "Locations created"