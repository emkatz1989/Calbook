# class AddEntriesAssociationToUser < ActiveRecord::Migration
#   def self.up
#   	add_column :entries, :user_id, :integer
#   	add_index 'entries', ['user_id'], :name => 'index_user_id'
#   end

#   def self.down
#   	remove_column :entries, :user_id
#   end
# end
