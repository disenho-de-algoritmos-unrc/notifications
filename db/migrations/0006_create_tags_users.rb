Sequel.migration do                                                                                           
  up do                                                                                                       
    create_table(:tags_users) do
	  foreign_key :user_id, :users
	  foreign_key :tag_id, :tags
	  primary_key [:user_id, :tag_id]
	  index [:user_id, :tag_id]
    end                                                                                                       
  end                                                                                                         
  down do                                                                                                     
    drop_table(:tags_users)                                                                                        
  end
end
