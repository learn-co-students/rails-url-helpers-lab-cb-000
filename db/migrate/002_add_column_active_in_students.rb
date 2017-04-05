class AddColumnActiveInStudents < ActiveRecord::Migration
  add_column :students, :active, :boolean, :default => true
end
