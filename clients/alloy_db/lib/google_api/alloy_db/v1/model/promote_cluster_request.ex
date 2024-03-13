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

defmodule GoogleApi.AlloyDB.V1.Model.PromoteClusterRequest do
  @moduledoc """
  Message for promoting a Cluster

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. The current etag of the Cluster. If an etag is provided and does not match the current etag of the Cluster, deletion will be blocked and an ABORTED error will be returned.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, performs request validation (e.g. permission checks and any other type of validation), but do not actually execute the delete.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :requestId => String.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:etag)
  field(:requestId)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.PromoteClusterRequest do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.PromoteClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.PromoteClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end