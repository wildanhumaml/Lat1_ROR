class CreateDisounts < ActiveRecord::Migration[5.1]
  def change
    create_table :disounts do |t|

      t.timestamps
    end
  end
end
