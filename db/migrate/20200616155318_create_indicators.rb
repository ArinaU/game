class CreateIndicators < ActiveRecord::Migration[6.0]
  def change
    create_table :indicators do |t|
      t.string "indicator_name"
    end
  end
end
