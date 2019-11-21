namespace :db do
  desc "Seeding cities, mayors for this cities and their councilors"
  task seeding: :environment do
    for i in 1..223
      City.create!(
        nome: Faker::Movies::LordOfTheRings.location,
        populacao: Faker::Number.number(digits: 6),
        mayor_attributes: {
          nome: Faker::Movies::LordOfTheRings.character,
          email: Faker::Internet.email
        })
    end

    for j in 1..1000
      Councilor.create!(
        nome: Faker::Sports::Football.player,
        telefone: Faker::PhoneNumber.phone_number,
        city: City.all.sample
      )
    end
  end
end
