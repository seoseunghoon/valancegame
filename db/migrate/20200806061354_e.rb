class E < ActiveRecord::Migration[6.0]
  def change
	  Counting.create(counting: 0)
  end
end
