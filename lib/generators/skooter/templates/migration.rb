# frozen_string_literal: true

class SkooterCreateForms < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :skooter_forms do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end