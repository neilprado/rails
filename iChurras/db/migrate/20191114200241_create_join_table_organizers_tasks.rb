class CreateJoinTableOrganizersTasks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :organizers, :tasks do |t|
      t.index [:organizer_id, :task_id]
      t.index [:task_id, :organizer_id]
      t.boolean :status
    end
  end
end
