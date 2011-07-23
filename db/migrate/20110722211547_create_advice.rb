class CreateAdvice < ActiveRecord::Migration
  def self.up
    create_table :advice do |t|
      t.integer :user_id
      t.text :body
      t.text :name
      t.text :url
      t.timestamps
    end
  end

  def self.down
    drop_table :advice
  end
end
