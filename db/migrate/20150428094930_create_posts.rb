class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :publication
      t.string :url
      t.string :author
      t.string :pull_quote

      t.timestamps
    end
  end
end
