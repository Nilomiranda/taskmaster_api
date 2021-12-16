defmodule TaskmasterWeb.Mutations.User do
  use Absinthe.Schema.Notation

  alias TaskmasterWeb.UserResolver

  object :user_mutations do
    @desc "Create new account"

    field :create_account, non_null(:user) do
      resolve &UserResolver.create_user/3
    end
  end
end
