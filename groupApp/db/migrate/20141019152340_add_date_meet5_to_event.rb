class AddDateMeet5ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet5, :string
  end
end
