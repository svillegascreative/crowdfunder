class AddTitleToReward < ActiveRecord::Migration[5.0]



  def change
    add_column :rewards, :title, :string

  end
end
