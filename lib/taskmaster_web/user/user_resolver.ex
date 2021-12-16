defmodule TaskmasterWeb.UserResolver do
  alias Taskmaster.Accounts

  def users(_root, _args, _info) do
    {:ok, Accounts.list_users()}
  end

  def create_user(_root, args, _info) do
    {:ok, Accounts.create_user(args)}
  end
end
