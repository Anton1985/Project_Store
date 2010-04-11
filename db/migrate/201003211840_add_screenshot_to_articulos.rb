class AddScreenshotToArticulos < ActiveRecord::Migration
  def self.up
    add_column :articulos, :screenshot_file_name,    :string
    add_column :articulos, :screenshot_content_type, :string
    add_column :articulos, :screenshot_file_size,    :integer
    add_column :articulos, :screenshot_updated_at,   :datetime

  end

  def self.down
    remove_column :articulos, :screenshot_file_name
    remove_column :articulos, :screenshot_content_type
    remove_column :articulos, :screenshot_file_size
    remove_column :articulos, :screenshot_updated_at
  end
end
