class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :type
      t.integer :team_id

      t.timestamps
    end
  end
end
