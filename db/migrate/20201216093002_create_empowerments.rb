class CreateEmpowerments < ActiveRecord::Migration[6.0]
  def change
    create_table :empowerments do |t|
      t.string :well_action
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
