class AddPhotoToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :photo, :string
    remove_column :users, :photo, :string
  end
end
