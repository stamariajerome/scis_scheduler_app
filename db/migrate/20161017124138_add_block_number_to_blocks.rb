class AddBlockNumberToBlocks < ActiveRecord::Migration[5.0]
  def change
    add_column :blocks, :block_number, :integer
  end
end
