class AddPropertiesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :properties, :hstore

    execute "CREATE INDEX users_properties ON users USING GIN(properties)"
  end

  def self.down
    execute "DROP INDEX users_properties"

    remove_column :users, :properties
  end
end
