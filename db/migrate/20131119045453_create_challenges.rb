class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.text :goal
      t.date :accomplish_by
      t.boolean :is_completed
      t.date :completed_on
      t.references :user, index: true
      t.integer :challenge_as_summit_id, index: true

      t.timestamps
    end
  end
end
