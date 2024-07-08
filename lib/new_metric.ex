defmodule NewMetric do
  @moduledoc """
  Documentation for `NewMetric`.
  """

  def query do
    {:ok, channel} =
      GRPC.Stub.connect(
        System.get_env("HOST"),
        System.get_env("PORT"),
        interceptors: [{GRPC.Logger.Client, level: :debug}]
      )

    Cosmos.Staking.V1beta1.Query.Stub.delegator_delegations(
      channel,
      Cosmos.Staking.V1beta1.QueryDelegatorDelegationsRequest.new(
        delegator_addr: "kujira1xe0awk5planmtsmjel5xtx2hzhqdw5p8z66yqd",
        pagination: Cosmos.Base.Query.V1beta1.PageRequest.new(limit: 1000)
      )
    )
  end
end
