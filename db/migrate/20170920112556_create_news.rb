class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :content
      t.string :url
      t.timestamps
    end
  end
end
