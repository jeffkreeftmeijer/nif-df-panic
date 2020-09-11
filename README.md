# DiskUsage

```
asdf shell erlang 22.3.4.10 && asdf shell elixir master-otp-22 && mix test
status: exit code: 0
.

Finished in 0.02 seconds
1 test, 0 failures

Randomized with seed 545000
$ asdf shell erlang 23.0.3 && asdf shell elixir master-otp-23 && mix test
thread '<unnamed>' panicked at 'failed: Os { code: 10, kind: Other, message: "No child processes" }', src/lib.rs:30:18
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace


  1) test does not panic (DiskUsageTest)
     test/disk_usage_test.exs:5
     ** (ErlangError) Erlang error: :nif_panic
     code: assert DiskUsage.read() == :ok
     stacktrace:
       (disk_usage 0.1.0) DiskUsage.read()
       test/disk_usage_test.exs:6: (test)



Finished in 0.04 seconds
1 test, 1 failure

Randomized with seed 438382
```
