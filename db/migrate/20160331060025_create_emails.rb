class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	t.integer :user_id
    	t.string :send_from
    	t.string :subject
    	t.text :message
    	t.boolean :draft
    	t.boolean :sent
    	t.timestamps null: false
    end
  end
end
