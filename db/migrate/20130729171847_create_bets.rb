class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :name
      t.string :email
      t.date :reminder
      t.text :details
      t.boolean :sent

      t.timestamps
    end
  end
end
