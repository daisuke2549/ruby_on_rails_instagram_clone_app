class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :caption
      # string = 文字列
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
