class RemoveTermsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :terms, :boolean
  end
end
