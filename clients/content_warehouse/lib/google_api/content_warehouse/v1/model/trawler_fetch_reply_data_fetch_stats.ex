# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStats do
  @moduledoc """
  The fetcher keeps track of various time intervals spent in the states of the fetcher url control flow. Sometimes flows branch out into more than one flow (next flow), and we aggregate all the time intervals spent in a specific state for all the flows to get the time interval for the state. The time interval for a state is therefore not the time interval of an individual flow, if the WaitNextFlow time is non zero. The WaitNextFlow interval included here is the time spent by one flow waiting for another flow. Although the WaitNextFlow time is the time spent by a flow in the WaitNextFlow state, its also equivalent to the entire timeline of another flow. It is the time spent in the various states of another flow. In computing the total time spent in the primary flow, one must omit the WaitNextFlow time, since it is already included in the form of slices of individual state time intervals in the aggregated time intervals for other states, and will result in double counting.

  ## Attributes

  *   `BotOverheadMS` (*type:* `integer()`, *default:* `nil`) - Overhead spent RPCing with the Bot/proxy.
  *   `ClientControlflowStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsClientStateStats.t`, *default:* `nil`) - 
  *   `ConnectTimeMs` (*type:* `integer()`, *default:* `nil`) - Report only with first request on connection, so that we keep track of the connect time with a host. Sometimes a connection is initiated by a prior request that times out before the connection is established. Another request can get scheduled on a connection that is already in the process of being established but has no request scheduled onto it. We want to keep track of the entire connect time even if a request didn't need to wait for the entire connection establishment time. Sometimes a connection may get established before the first request uses it. We tag along the connect time with the first request using the connection. ConnectTimeMs also includes SSL negotiation time.
  *   `ControlflowStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsStateStats.t`, *default:* `nil`) - 
  *   `DownLoadTime` (*type:* `integer()`, *default:* `nil`) - DownLoadTime = Share of connect time + ServerResponseTimeMs + TransferTimeMs (see below) in ms
  *   `EdgeEgressOverheadMs` (*type:* `integer()`, *default:* `nil`) - Overhead spent routing the request from HOPE to edge egress nodes, which open connection to webservers. This is only set for edge fetches (e.g., through Floonet egress nodes).
  *   `SSLConnectTimeMs` (*type:* `integer()`, *default:* `nil`) - ConnectTimeMs includes TCP connect time + SSL time, whereas SSLConnectTimeMs includes only the latter.
  *   `ServerResponseTimeMs` (*type:* `integer()`, *default:* `nil`) - Time between the request send and the receipt of the first fragment of the response. For HTTP responses the first fragment is the first fragment of the response payload (the headers are ignored).
  *   `TransferTimeMs` (*type:* `integer()`, *default:* `nil`) - Time to receive the entire response payload starting the clock on receiving the first fragment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :BotOverheadMS => integer() | nil,
          :ClientControlflowStats =>
            GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsClientStateStats.t()
            | nil,
          :ConnectTimeMs => integer() | nil,
          :ControlflowStats =>
            GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsStateStats.t()
            | nil,
          :DownLoadTime => integer() | nil,
          :EdgeEgressOverheadMs => integer() | nil,
          :SSLConnectTimeMs => integer() | nil,
          :ServerResponseTimeMs => integer() | nil,
          :TransferTimeMs => integer() | nil
        }

  field(:BotOverheadMS)

  field(:ClientControlflowStats,
    as: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsClientStateStats
  )

  field(:ConnectTimeMs)

  field(:ControlflowStats,
    as: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStatsStateStats
  )

  field(:DownLoadTime)
  field(:EdgeEgressOverheadMs)
  field(:SSLConnectTimeMs)
  field(:ServerResponseTimeMs)
  field(:TransferTimeMs)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStats do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataFetchStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
