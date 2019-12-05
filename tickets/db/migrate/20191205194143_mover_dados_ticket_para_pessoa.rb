class MoverDadosTicketParaPessoa < ActiveRecord::Migration[5.2]
  def change
    for t in Ticket.all
      Person.create!(
        :nome => t.ganhador,
        :telefone => t.telefone,
        :person_id => t.id
      )
    end
  end
end
