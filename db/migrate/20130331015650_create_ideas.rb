class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :text
      t.integer :points

      t.timestamps
    end
  end
end
