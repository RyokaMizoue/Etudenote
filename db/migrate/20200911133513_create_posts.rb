class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :time
      t.string :subject
      t.string :book

      t.timestamps
    end
  end
end
