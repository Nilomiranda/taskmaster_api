defmodule TaskmasterWeb.Schema do
  use Absinthe.Schema

  import_types TaskmasterWeb.Schema.User

  import_types TaskmasterWeb.Queries.User
  import_types TaskmasterWeb.Mutations.User

  query do
    import_fields :user_queries
  end

  mutation do
    import_fields :user_mutations
  end
end
