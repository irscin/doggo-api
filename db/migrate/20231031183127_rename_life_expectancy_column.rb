class RenameLifeExpectancyColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :dog_brands, :life_expectancy, :max_life_expectancy
  end
end
