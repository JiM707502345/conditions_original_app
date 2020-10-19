class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string    :nickname,                null: false, default: ""
      t.integer   :point,                   null: false
      t.timestamps
    end
  end
end
