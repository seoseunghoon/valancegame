class CreateCountings < ActiveRecord::Migration[6.0]
  def change
    create_table :countings do |t|
	t.integer :counting
      t.timestamps
    end
  end
end
