class CreateExampleHierarchies < ActiveRecord::Migration[6.0]
  def change
    create_table :example_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :example_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "example_anc_desc_idx"

    add_index :example_hierarchies, [:descendant_id],
      name: "example_desc_idx"
  end
end
