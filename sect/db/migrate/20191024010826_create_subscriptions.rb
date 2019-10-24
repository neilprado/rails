class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :nome
      t.integer :matricula
      t.boolean :status
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
