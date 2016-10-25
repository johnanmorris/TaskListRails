class AddUserToTask < ActiveRecord::Migration
  def change
    add_reference(:tasks, :user, index: true)
    add_foreign_key(:tasks, :user)
  end
end
