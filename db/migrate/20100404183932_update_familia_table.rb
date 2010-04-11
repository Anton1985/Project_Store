class UpdateFamiliaTable < ActiveRecord::Migration
  def self.up
	add_column :familias, :arancel_monto,    :float
  end

  def self.down
	remove_column :familias, :arancel_monto,    :float
  end
end
