User.destroy_all
Guitar.destroy_all
Part.destroy_all 

user1 = User.create(name: "Shredder")
user2 = User.create(name: "Blues Man")
user3 = User.create(name: "Jazz Man")
user4 = User.create(name: "Cool Fool")



gtr1 = Guitar.create(user_id: user1.id, manufacturer: "Fender", model: "Strat")
gtr2 = Guitar.create(user_id: user1.id, manufacturer: "Gibson", model: "Les Paul")
gtr3 = Guitar.create(user_id: user3.id, manufacturer: "Fender", model: "Tele")
gtr4 = Guitar.create(user_id: user2.id, manufacturer: "Martin", model: "Dreadnaught")
gtr5 = Guitar.create(user_id: user4.id, manufacturer: "Gibson", model: "Les Paul")

part01 = Part.create(manufacturer: "Fender",part_name: "Strat Body",color: "Sunburst Orange",material: "Alder",price: 250)
part02 = Part.create(manufacturer: "Fender",part_name: "Strat Body",color: "Cherry Red",material: "Alder",price: 250)
part03 = Part.create(manufacturer: "Fender",part_name: "Strat Body",color: "Starburst Blue",material: "Alder",price: 250)
part04 = Part.create(manufacturer: "Fender",part_name: "Tele Body",color: "Gloss Black",material: "Alder",price: 250)
part05 = Part.create(manufacturer: "Fender",part_name: "Tele Body",color: "Burnt Orange",material: "Alder",price: 250)
part06 = Part.create(manufacturer: "Fender",part_name: "Tele Body",color: "Cherry Red",material: "Alder",price: 250)
part07 = Part.create(manufacturer: "Fender",part_name: "Strat Neck-Fretboard",color: "Clear Matte",material: "Maple",price: 300)
part08 = Part.create(manufacturer: "Fender",part_name: "Strat Neck-Fretboard",color: "Natural",material: "Rosewood",price: 300)
part09 = Part.create(manufacturer: "Fender",part_name: "Strat Neck-Fretboard",color: "Natural",material: "Maple",price: 250)
part10 = Part.create(manufacturer: "Fender",part_name: "Tele Neck-Fretboard",color: "Natural",material: "Pau Ferro",price: 250)
part11 = Part.create(manufacturer: "Fender",part_name: "Tele Neck-Fretboard",color: "Natural",material: "Maple",price: 300)
part12 = Part.create(manufacturer: "Fender",part_name: "Tele Neck-Fretboard",color: "Natural",material: "Rosewood",price: 550)
part13 = Part.create(manufacturer: "Fender",part_name: "Tele Pickups",color: "Black",description: "Single Coil Set", price: 160)
part14 = Part.create(manufacturer: "Fender",part_name: "Tele Pickups",color: "Black",description: "Single Coil Set, TexMex", price: 80)
part15 = Part.create(manufacturer: "Fender",part_name: "Tele Pickups",color: "Black",description: "Single Coil, Custom Shop Set", price: 190)
part16 = Part.create(manufacturer: "Fender",part_name: "Strat Pickups",color: "Bone",description: "Single Coil, Josephina Hand Wound Set", price: 500)
part17 = Part.create(manufacturer: "Fender",part_name: "Strat Pickups",color: "Bone",description: "Single Coil, Hot Wound Set", price: 190)
part18 = Part.create(manufacturer: "Fender",part_name: "Strat Pickups",color: "Black, Bone",description: "Humbucker, Shawbucker", price: 100)
part19 = Part.create(manufacturer: "Gibson",part_name: "Gibson Pickups",color: "Black",description: "Humbucker, Classic 57", price: 155)
part20 = Part.create(manufacturer: "Gibson",part_name: "Gibson Pickups",color: "Black",description: "Humbucker, Dirty Fingers", price: 155)
part21 = Part.create(manufacturer: "Gibson",part_name: "Gibson Pickups",color: "Chrome",description: "MiniHumbucker, Bridge or Neck", price: 155)
part22 = Part.create(manufacturer: "Gibson",part_name: "Gibson Bridges",color: "Chrome",description: "ABR-1 Tune-o-matic", price: 70)
part23 = Part.create(manufacturer: "Gibson",part_name: "Gibson Bridges",color: "Nickel",description: "Nashville Tune-o-matic", price: 75)
part25 = Part.create(manufacturer: "Gibson",part_name: "Gibson Bridges",color: "Gold",description: "Historic Nonwire ABR-1", price: 85)
part26 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "Black Ebony",description: "Inlay - Tree of Life", price: 1750)
part27 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "East Indian Rosewood",description: "Inlay - Tree of Life", price: 1890)
part28 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "East Indian Rosewood",description: "Inlay - 74 Snowflake", price: 1650)
part29 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "Phosphor Bronze",description: "Medium Guage", price: 26)
part30 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "Nylon",description: "Premium Hard Tension Tie end", price: 11)
part31 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "80-20 Bronze",description: "Light Guage", price: 30)


gp1 = GuitarPart.create(guitar_id: gtr1.id,part_id: part01.id)
gp2 = GuitarPart.create(guitar_id: gtr1.id,part_id: part16.id)
gp3 = GuitarPart.create(guitar_id: gtr4.id,part_id: part29.id)
gp4 = GuitarPart.create(guitar_id: gtr2.id,part_id: part21.id)












puts "Seed file ran."