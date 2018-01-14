# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
User.destroy_all

Thibault=User.create(email:'thibault.pinta@gmail.com', password:'testtest')
Antoine=User.create(email:'a.devulp@gmail.com', password:'testtest')
Guillaume=User.create(email:'g.lefebvre@gmail.com', password:'testtest')

kudoz = Product.create!(user: Thibault , name: "kudoz", url:"http://getkudoz.com", tagline:"Tinder for job search",category: "Tech")
uslide = Product.create!(user: Antoine , name:"uslide", url:"http://uslide.io", tagline:"Youtube sucks for education",category: "Design")
medpics = Product.create!(user: Guillaume, name:"Medpics", url:"http://medpics.com", tagline:"Share your diagnostics",category: "Education")

#upvotes

kudoz.upvotes.create! user: Thibault
kudoz.upvotes.create! user: Antoine

uslide.upvotes.create! user: Thibault
uslide.upvotes.create! user: Guillaume

medpics.upvotes.create! user: Thibault
medpics.upvotes.create! user: Guillaume
medpics.upvotes.create! user: Antoine
