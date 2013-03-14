class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :id
      t.string :word
    end
  end
end
