defmodule TaskmasterWeb.Schema do
  use Absinthe.Schema

  alias TaskmasterWeb.UserResolver

  object :user do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :email, non_null(:string)
  end

  query do
    @desc "Get all users"
    field :users, non_null(list_of(non_null(:user))) do
      resolve(&UserResolver.users/3)
    end
  end
end
