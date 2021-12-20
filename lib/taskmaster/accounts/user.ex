defmodule Taskmaster.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    field :password, :string, virtual: true

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password])
    |> create_hashed_password()
    |> validate_required([:name, :email, :password])
  end

  defp create_hashed_password(%Changeset{valid?: true, changes: %{ password: password } } = user) do
    change(user, password_hash: Bcrypt.Base.hash_password(password, Bcrypt.gen_salt(12)))
  end

  defp create_hashed_password(changeset), do: changeset
end
