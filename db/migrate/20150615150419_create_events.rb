class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :team
      t.string :type

      t.timestamps
    end
  end
end
