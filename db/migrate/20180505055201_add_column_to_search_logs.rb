class AddColumnToSearchLogs < ActiveRecord::Migration
  def change
    add_column :search_logs, :search_type, :char
  end
end
