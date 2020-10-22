class ChangeDataTimeToPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :time, 'integer USING CAST(time AS integer)'
  end
end
