class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :link

      t.timestamps
    end
  end
end
