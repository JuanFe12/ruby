class CreateChatgroups < ActiveRecord::Migration[6.0]
  def change
    create_table :chatgroups do |t|
      t.string :namegroup
      t.string :photogroup
      t.string :messagegroup

      t.timestamps
    end
  end
end
