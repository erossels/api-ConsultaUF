class AddRequestToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :request, :string
  end
end
