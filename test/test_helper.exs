ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Rengar.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Rengar.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Rengar.Repo)

