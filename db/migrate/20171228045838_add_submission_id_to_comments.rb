class AddSubmissionIdToComments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :submission_id, :integer
  end
end
