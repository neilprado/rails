class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :ganhador
      t.string :telefone
      t.string :filme
      t.string :genero
      t.integer :classificacao

      t.timestamps
    end
  end
end
