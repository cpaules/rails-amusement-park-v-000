class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here
 def change
     create_table :attractions do |t|
       t.string :name
       t.integer :tickets
       t.integer :nausea_rating
       t.integer :happiness_rating
       t.integer :min_height
     end
   end
end
