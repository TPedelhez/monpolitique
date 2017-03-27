class AddRateToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_column :opinions, :rate, :integer
  end
end
