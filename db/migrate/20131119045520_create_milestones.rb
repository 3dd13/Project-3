class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.text :step
      t.date :complete_by
      t.boolean :is_done
      t.text :comment
      t.boolean :repeat
      t.integer :repeat_freq
      t.references :challenge, index: true

      t.timestamps
    end
  end
end
