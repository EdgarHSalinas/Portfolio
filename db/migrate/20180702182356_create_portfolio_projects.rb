class CreatePortfolioProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_projects do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
