class AddPresidentToQuote < ActiveRecord::Migration[5.0]
  def change
    add_reference :quotes, :president, foreign_key: true
  end
end
