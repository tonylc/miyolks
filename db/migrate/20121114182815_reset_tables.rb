class ResetTables < ActiveRecord::Migration
  def up
    drop_table :feedings
    drop_table :sleepings
    drop_table :changings

    create_table :feeding_schedules do |t|
      t.boolean :bottled
      t.decimal :ounces
      t.boolean :left
      t.datetime :start, null: false
      t.datetime :end
    end

    create_table :sleeping_schedules do |t|
      t.datetime :start, null: false
      t.datetime :end
    end

    create_table :changes do |t|
      t.boolean :pee
      t.boolean :poo
      t.datetime :time, null: false
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
