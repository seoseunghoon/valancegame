class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
		t.text :title
		t.text :A
		t.text :B
		t.text :Acontent
		t.text :Bcontent
		t.integer :Acount
		t.integer :Bcount
		t.integer :thumbsup
		t.integer :thumbsdown
      t.timestamps
    end
  end
end
