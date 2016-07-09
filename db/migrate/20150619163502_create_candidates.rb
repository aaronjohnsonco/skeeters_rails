class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :player_name
      t.string :dob
      t.string :player_experience
      t.string :city_of_residence
      t.string :contact1_name
      t.string :contact1_phone
      t.string :contact1_email
      t.string :contact2_name
      t.string :contact2_phone
      t.string :contact2_email

      t.timestamps
    end
  end
end
