class RemoverDadosPessoaEmTicket < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :ganhador, :string
    remove_column :tickets, :telefone, :string
  end
end
