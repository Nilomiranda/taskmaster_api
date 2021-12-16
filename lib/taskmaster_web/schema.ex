defmodule TaskmasterWeb.Schema do
  use Absinthe.Schema

  alias TaskmasterWeb.UserResolver

  import_types TaskmasterWeb.Schema.User

  query do
    @desc "Get all users"
    field :users, non_null(list_of(non_null(:user))) do
      resolve(&UserResolver.users/3)
    end
  end
end
