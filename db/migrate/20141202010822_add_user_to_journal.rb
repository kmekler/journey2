class AddUserToJournal < ActiveRecord::Migration
  def change
    add_reference :journals, :user, index: true
  end
end
