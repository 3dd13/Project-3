class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.text :user_update
      t.text :user_comment

      t.timestamps
    end
  end
end
