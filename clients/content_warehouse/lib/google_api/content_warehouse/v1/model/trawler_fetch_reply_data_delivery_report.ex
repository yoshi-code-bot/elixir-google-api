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

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataDeliveryReport do
  @moduledoc """
  Depending on which Data Acquisition API the client uses, the fetched content can be delivered to the client in the RPC, via Goops, or copied to the client's storage system (possibly after transformation). In the latter case, DeliveryReport will contain info about the delivery status, such as whether we have permission error, whether the destination storage is out of quota, etc).

  ## Attributes

  *   `events` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.TrawlerEvent.t)`, *default:* `nil`) - The events store the detail of messages (usually error).
  *   `filePath` (*type:* `String.t`, *default:* `nil`) - The complete path (include the file name) of the file downloaded. For requests that require delivery, this path will be the user specified location. For requests that use Multiverse default storage, this path will be the managed by Multiverse.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the transfer action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :events => list(GoogleApi.ContentWarehouse.V1.Model.TrawlerEvent.t()) | nil,
          :filePath => String.t() | nil,
          :status => String.t() | nil
        }

  field(:events, as: GoogleApi.ContentWarehouse.V1.Model.TrawlerEvent, type: :list)
  field(:filePath)
  field(:status)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataDeliveryReport do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataDeliveryReport.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataDeliveryReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end