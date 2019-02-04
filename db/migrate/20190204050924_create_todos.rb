class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :content
      t.boolean :done, defalut: false

      t.timestamps
    end
  end
end
