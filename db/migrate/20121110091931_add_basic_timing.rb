class AddBasicTiming < ActiveRecord::Migration
  def change
    create_table :changings do |t|
      t.datetime :time, null: false
    end

    create_table :feedings do |t|
      t.datetime :time, null: false
    end

    create_table :sleepings do |t|
      t.datetime :time, null: false
    end
  end
end
