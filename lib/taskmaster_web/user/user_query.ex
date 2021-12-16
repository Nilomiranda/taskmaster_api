defmodule TaskmasterWeb.Query.User do
  use Absinthe.Schema.Notation

  alias TaskmasterWeb.UserResolver

  import_types TaskmasterWeb.Schema.User

  object :user_queries do
    @desc "Get all users"

    field :users, non_null(list_of(non_null(:user))) do
      resolve(&UserResolver.users/3)
    end
  end
end
