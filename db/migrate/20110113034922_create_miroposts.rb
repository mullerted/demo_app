class CreateMiroposts < ActiveRecord::Migration
  def self.up
    create_table :miroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :miroposts
  end
end
