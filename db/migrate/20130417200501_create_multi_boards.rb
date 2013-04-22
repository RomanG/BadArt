class CreateMultiBoards < ActiveRecord::Migration
  def change
    create_table :multi_boards do |t|
      t.string :link

      t.timestamps
    end
  end
end
