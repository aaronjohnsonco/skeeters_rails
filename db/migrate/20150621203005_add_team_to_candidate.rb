class AddTeamToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :team, :string
  end
end
