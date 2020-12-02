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

part1 = Part.create(partname: "Strat Body",color: "Sunburst Orange",material: "Alder",price: 250)
part1 = Part.create(partname: "Strat Body",color: "Cherry Red",material: "Alder",price: 250)
part1 = Part.create(partname: "Strat Body",color: "Starburst Blue",material: "Alder",price: 250)
part1 = Part.create(partname: "Tele Body",color: "Gloss Black",material: "Alder",price: 250)
part1 = Part.create(partname: "Tele Body",color: "Burnt Orange",material: "Alder",price: 250)
part1 = Part.create(partname: "Tele Body",color: "Cherry Red",material: "Alder",price: 250)
part1 = Part.create(partname: "Strat Neck-Fretboard",color: "Clear Matte",material: "Maple",price: 300)
part1 = Part.create(partname: "Strat Neck-Fretboard",color: "Natural",material: "Rosewood",price: 300)
part1 = Part.create(partname: "Strat Neck-Fretboard",color: "Natural",material: "Maple",price: 250)
part1 = Part.create(partname: "Tele Neck-Fretboard",color: "Natural",material: "Pau Ferro",price: 250)
part1 = Part.create(partname: "Tele Neck-Fretboard",color: "Natural",material: "Maple",price: 300)
part1 = Part.create(partname: "Tele Neck-Fretboard",color: "Natural",material: "Rosewood",price: 550)
part1 = Part.create(partname: "Pickups",color: "Black",price: 550)














puts "Seed file ran."