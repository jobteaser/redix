defmodule Redix.Connection.Adapter do

  def connect(addr, port, opts) do
    :gen_tcp.connect(addr, port, opts)
  end

  def connect(addr, port, opts, timeout) do
    :gen_tcp.connect(addr, port, opts, timeout)
  end

  def close(sock) do
    :gen_tcp.close(sock)
  end

  def send(sock, parcket) do
    :gen_tcp.send(sock, parcket)
  end

  def controlling_process(sock, receiver) do
    :gen_tcp.controlling_process(sock, receiver)
  end

  def recv(sock, len) do
    :gen_tcp.recv(sock, len)
  end

  def setopts(sock, opts) do
    :inet.setopts(sock, opts)
  end

  def getopts(sock, opts) do
    :inet.getopts(sock, opts)
  end

  def format_error(reason) do
    :inet.format_error(reason)
  end

end
