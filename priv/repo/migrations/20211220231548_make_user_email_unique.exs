defmodule Taskmaster.Repo.Migrations.MakeUserEmailUnique do
  use Ecto.Migration

  def change do
    create unique_index("users", ["email"], name: :user_email_unique)
  end
end
