namespace :db do
  desc 'Popula o banco com dados falsos'
  task fake: :environment do
    for i in 1..50
      Ticket.create!(
          ganhador: Faker::Name.name,
          telefone: Faker::PhoneNumber.cell_phone,
          filme: Faker::Game.title,
          genero: Faker::Game.genre,
          classificacao: Faker::Number.between(from=1, to=18)
      )
    end
  end

end
