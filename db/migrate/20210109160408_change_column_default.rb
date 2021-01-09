class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :comments, :user_id, true
  end
end
