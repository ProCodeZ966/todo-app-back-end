class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task_name
      t.boolean :completed
      t.string :due_date

      t.timestamps null: false
    end
  end
end
