# KvUmbrella

In a console run `bar` node:
```
> cd apps/kv
> iex --sname bar -S mix
```

In another console run distributed tests:
```
> elixir --sname foo -S mix test --only distributed
```
