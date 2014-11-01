class AddDateMeet2ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet2, :string
  end
end
