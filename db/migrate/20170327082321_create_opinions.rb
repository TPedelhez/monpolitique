class CreateOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :opinions do |t|
      t.integer :user_id
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
