class CreateBlogposts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogposts do |t|
      t.text :title
      t.text :lead
      t.text :content
      t.integer :bloggenre_id

      t.timestamps
    end
  end
end
