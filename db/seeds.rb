User.destroy_all
Guitar.destroy_all 

user1 = User.create(name: "Shredder")
user2 = User.create(name: "Blues Man")
user3 = User.create(name: "Jazz Man")
user4 = User.create(name: "Cool Fool")



gtr1 = Guitar.create(user_id: user1.id, manufacturer: "Fender", model: "Strat")
gtr2 = Guitar.create(user_id: user1.id, manufacturer: "Gibson", model: "Les Paul")
gtr3 = Guitar.create(user_id: user3.id, manufacturer: "Fender", model: "Tele")
gtr4 = Guitar.create(user_id: user2.id, manufacturer: "Martin", model: "Dreadnaught")
gtr5 = Guitar.create(user_id: user4.id, manufacturer: "Gibson", model: "Les Paul")












puts "Seed file ran."