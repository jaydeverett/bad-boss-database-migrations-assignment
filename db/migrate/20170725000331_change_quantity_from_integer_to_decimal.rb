class ChangeQuantityFromIntegerToDecimal < ActiveRecord::Migration[5.0]
  def change

  end

  reversible do |dir|
    dir.up do
        change_column :parts, :quantity, :decimal
      end

      dir.down do
        change_column :parts, :quantity, :integer
      end
    end
end
