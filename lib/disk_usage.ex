defmodule DiskUsage do
  use Rustler, otp_app: :disk_usage

  def add(_arg1, _arg2), do: :erlang.nif_error(:nif_not_loaded)
  def read(), do: :erlang.nif_error(:nif_not_loaded)
end
