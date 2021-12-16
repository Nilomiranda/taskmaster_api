defmodule TaskmasterWeb.Schema do
  use Absinthe.Schema

  import_types TaskmasterWeb.Query.User

  query do
    import_fields :user_queries
  end
end
