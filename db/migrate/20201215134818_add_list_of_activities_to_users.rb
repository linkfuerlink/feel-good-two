class AddListOfActivitiesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :list_of_activity, :string, array: true, default: []
  end
end
