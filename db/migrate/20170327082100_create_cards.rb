class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :description
      t.string :candidate

      t.timestamps
    end
  end
end
