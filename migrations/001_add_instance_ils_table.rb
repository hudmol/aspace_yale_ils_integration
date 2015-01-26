Sequel.migration do

  up do

    create_table(:instance_ils) do
      primary_key :id

      Integer :lock_version, :default => 0, :null => false
      Integer :json_schema_version, :null => false

      Integer :instance_id, :null => true

      String :holding_id, :null => true
      String :item_id, :null => true
      DateTime :exported, :null => true

      apply_mtime_columns
    end


    alter_table(:material_types) do
      add_foreign_key([:instance_id], :instance, :key => :id)
    end

  end


  down do

    drop_table(:instance_ils)

  end

end
