class AddPopularityToProduct < ActiveRecord::Migration
  def change
    add_column :products, :popularity, :decimal
  end
end
