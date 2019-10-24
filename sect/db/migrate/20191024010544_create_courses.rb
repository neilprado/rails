class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :nome_instrutor
      t.string :email_instrutor
      t.string :titulo
      t.integer :carga_horaria
      t.integer :vagas
      t.string :requisito

      t.timestamps
    end
  end
end
