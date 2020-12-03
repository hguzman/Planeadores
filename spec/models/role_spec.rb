require 'rails_helper'

RSpec.describe Role, type: :model do

  it do
   should have_and_belong_to_many(:usuarios).
   join_table(:usuarios_roles)
  end

end
