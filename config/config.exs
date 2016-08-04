# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# By default, the umbrella project as well as each child
# application will require this configuration file, ensuring
# they all use the same configuration. While one could
# configure all applications here, we prefer to delegate
# back to each application for organization purposes.
import_config "../apps/*/config/config.exs"

# Sample configuration (overrides the imported configuration above):
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]

# example
# config :iex, default_prompt: ">>>"

{:ok, hostname} = :inet.gethostname

routing_table = [{?a..?m, :"foo@#{hostname}"}, {?n..?z, :"bar@#{hostname}"}]

IO.puts "Routing table: #{(inspect routing_table)}"

config :kv, :routing_table, routing_table
config :kv_server, :port, 4041
