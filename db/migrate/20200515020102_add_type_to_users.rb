class AddTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    # Need a 'type' attribute because the AdminUser inherits from User model
    add_column :users, :type, :string
  end
end
