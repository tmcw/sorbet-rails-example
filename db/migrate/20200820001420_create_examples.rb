class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.string :title
      t.integer :parent_id

      t.timestamps
    end
  end
end
