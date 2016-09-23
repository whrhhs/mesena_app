class CreateNippous < ActiveRecord::Migration
  def change
    create_table :nippous do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
