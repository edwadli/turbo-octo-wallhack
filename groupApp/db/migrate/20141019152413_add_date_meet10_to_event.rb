class AddDateMeet10ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet10, :string
  end
end
