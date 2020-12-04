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
gtr6 = Guitar.create(user_id: user4.id, manufacturer: "Fender", model: "Tele")

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
part24 = Part.create(manufacturer: "Gibson",part_name: "Gibson Bridges",color: "Gold",description: "Historic Nonwire ABR-1", price: 85)
part25 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "Black Ebony",description: "Inlay - Tree of Life", price: 1750)
part26 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "East Indian Rosewood",description: "Inlay - Tree of Life", price: 1890)
part27 = Part.create(manufacturer: "Martin",part_name: "Martin Fingerboard",material: "East Indian Rosewood",description: "Inlay - 74 Snowflake", price: 1650)
part28 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "Phosphor Bronze",description: "Medium Guage", price: 26)
part29 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "Nylon",description: "Premium Hard Tension Tie end", price: 11)
part30 = Part.create(manufacturer: "Martin",part_name: "Martin Strings",material: "80-20 Bronze",description: "Light Guage", price: 30)


gp01 = GuitarPart.create(guitar_id: gtr1.id,part_id: part01.id)
gp02 = GuitarPart.create(guitar_id: gtr1.id,part_id: part02.id)
gp03 = GuitarPart.create(guitar_id: gtr1.id,part_id: part03.id)
gp04 = GuitarPart.create(guitar_id: gtr1.id,part_id: part07.id)
gp05 = GuitarPart.create(guitar_id: gtr1.id,part_id: part08.id)
gp06 = GuitarPart.create(guitar_id: gtr1.id,part_id: part09.id)
gp07 = GuitarPart.create(guitar_id: gtr1.id,part_id: part16.id)
gp08 = GuitarPart.create(guitar_id: gtr1.id,part_id: part17.id)
gp09 = GuitarPart.create(guitar_id: gtr1.id,part_id: part18.id)
gp10 = GuitarPart.create(guitar_id: gtr3.id,part_id: part04.id)
gp11 = GuitarPart.create(guitar_id: gtr3.id,part_id: part05.id)
gp12 = GuitarPart.create(guitar_id: gtr3.id,part_id: part06.id)
gp13 = GuitarPart.create(guitar_id: gtr3.id,part_id: part10.id)
gp14 = GuitarPart.create(guitar_id: gtr3.id,part_id: part11.id)
gp15 = GuitarPart.create(guitar_id: gtr3.id,part_id: part12.id)
gp16 = GuitarPart.create(guitar_id: gtr3.id,part_id: part13.id)
gp17 = GuitarPart.create(guitar_id: gtr3.id,part_id: part14.id)
gp18 = GuitarPart.create(guitar_id: gtr3.id,part_id: part15.id)
gp19 = GuitarPart.create(guitar_id: gtr6.id,part_id: part04.id)
gp20 = GuitarPart.create(guitar_id: gtr6.id,part_id: part05.id)
gp21 = GuitarPart.create(guitar_id: gtr6.id,part_id: part06.id)
gp22 = GuitarPart.create(guitar_id: gtr6.id,part_id: part10.id)
gp23 = GuitarPart.create(guitar_id: gtr6.id,part_id: part11.id)
gp24 = GuitarPart.create(guitar_id: gtr6.id,part_id: part12.id)
gp25 = GuitarPart.create(guitar_id: gtr6.id,part_id: part13.id)
gp26 = GuitarPart.create(guitar_id: gtr6.id,part_id: part14.id)
gp27 = GuitarPart.create(guitar_id: gtr6.id,part_id: part15.id)
gp28 = GuitarPart.create(guitar_id: gtr2.id,part_id: part19.id)
gp29 = GuitarPart.create(guitar_id: gtr2.id,part_id: part20.id)
gp30 = GuitarPart.create(guitar_id: gtr2.id,part_id: part21.id)
gp31 = GuitarPart.create(guitar_id: gtr2.id,part_id: part22.id)
gp32 = GuitarPart.create(guitar_id: gtr2.id,part_id: part23.id)
gp33 = GuitarPart.create(guitar_id: gtr2.id,part_id: part24.id)
gp34 = GuitarPart.create(guitar_id: gtr5.id,part_id: part19.id)
gp35 = GuitarPart.create(guitar_id: gtr5.id,part_id: part20.id)
gp36 = GuitarPart.create(guitar_id: gtr5.id,part_id: part21.id)
gp37 = GuitarPart.create(guitar_id: gtr5.id,part_id: part22.id)
gp38 = GuitarPart.create(guitar_id: gtr5.id,part_id: part23.id)
gp39 = GuitarPart.create(guitar_id: gtr5.id,part_id: part24.id)
gp40 = GuitarPart.create(guitar_id: gtr4.id,part_id: part25.id)
gp41 = GuitarPart.create(guitar_id: gtr4.id,part_id: part26.id)
gp42 = GuitarPart.create(guitar_id: gtr4.id,part_id: part27.id)
gp43 = GuitarPart.create(guitar_id: gtr4.id,part_id: part28.id)
gp44 = GuitarPart.create(guitar_id: gtr4.id,part_id: part29.id)
gp45 = GuitarPart.create(guitar_id: gtr4.id,part_id: part30.id)












puts "Seed file ran."