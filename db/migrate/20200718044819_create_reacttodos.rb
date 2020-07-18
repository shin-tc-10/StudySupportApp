class CreateReacttodos < ActiveRecord::Migration[5.2]
  def change
    create_table :reacttodos do |t|

      t.timestamps
    end
  end
end
