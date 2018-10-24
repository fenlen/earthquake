class DropTsunamis < ActiveRecord::Migration[5.2]
  def up
    drop_table :tsunamis
  end

  def down
    raise ActiveRecord::IrrevirsibleMigration
  end
end
