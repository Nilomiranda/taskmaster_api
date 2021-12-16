defmodule TaskmasterWeb.Mutations.User do
  use Absinthe.Schema.Notation

  alias TaskmasterWeb.UserResolver

  object :user_mutations do
    @desc "Create new account"

    field :create_account, non_null(:user) do
      arg :email, non_null(:string)
      arg :name, non_null(:string)
      arg :password, non_null(:string)

      resolve &UserResolver.create_user/3
    end
  end
end
