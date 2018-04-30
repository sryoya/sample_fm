class CreateSearchLogs < ActiveRecord::Migration
  def change
    create_table :search_logs do |t|
      t.string :search_word
      t.string :user_ip
      t.timestamps null: false
    end
  end
end
