puts "🌱 Seeding spices..."

# Seed your database here
# run a loop 10 times
genders = ["M", "F", "non-binary"]
stance = ["goofy", "regular", "mongo"]
brands = ["Santa Cruz", "Powell Peralta", "Girl", "Anti-Hero", "Enjoi", "Baker", "Real", "Polar Skate", "Alien Workshop", "Almost", "Birdhouse", "Black Label", "Blind", "Blueprint"]
20.times do
# create a skater with random data
    Skater.create(
      name: Faker::Name.name,
      sex: genders.sample,
      stance: stance.sample
    )
  end

20.times do
# create a skateboard with random data
Skateboard.create(
    brand: brands.sample,
    skater_id: rand(1..20)
)
end


puts "✅ Done seeding!"
