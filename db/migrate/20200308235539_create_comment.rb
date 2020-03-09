class CreateComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false

      t.references :passage, null: false, foreign_key: true, index: true
      t.references :user, null: false, foreign_key: true, index: true

      t.text :comment, null: false

      t.timestamps null: false
    end

    add_index :comments, :uuid, unique: true
  end
end
