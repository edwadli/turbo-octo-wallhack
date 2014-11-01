class AddDateMeet3ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet3, :string
  end
end
