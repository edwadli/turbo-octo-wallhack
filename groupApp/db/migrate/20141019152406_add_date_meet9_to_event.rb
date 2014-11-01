class AddDateMeet9ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet9, :string
  end
end
