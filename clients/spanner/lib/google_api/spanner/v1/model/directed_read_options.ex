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

defmodule GoogleApi.Spanner.V1.Model.DirectedReadOptions do
  @moduledoc """
  The `DirectedReadOptions` can be used to indicate which replicas or regions should be used for non-transactional reads or queries. `DirectedReadOptions` can only be specified for a read-only transaction, otherwise the API returns an `INVALID_ARGUMENT` error.

  ## Attributes

  *   `excludeReplicas` (*type:* `GoogleApi.Spanner.V1.Model.ExcludeReplicas.t`, *default:* `nil`) - `Exclude_replicas` indicates that specified replicas should be excluded from serving requests. Spanner doesn't route requests to the replicas in this list.
  *   `includeReplicas` (*type:* `GoogleApi.Spanner.V1.Model.IncludeReplicas.t`, *default:* `nil`) - `Include_replicas` indicates the order of replicas (as they appear in this list) to process the request. If `auto_failover_disabled` is set to `true` and all replicas are exhausted without finding a healthy replica, Spanner waits for a replica in the list to become available, requests might fail due to `DEADLINE_EXCEEDED` errors.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeReplicas => GoogleApi.Spanner.V1.Model.ExcludeReplicas.t() | nil,
          :includeReplicas => GoogleApi.Spanner.V1.Model.IncludeReplicas.t() | nil
        }

  field(:excludeReplicas, as: GoogleApi.Spanner.V1.Model.ExcludeReplicas)
  field(:includeReplicas, as: GoogleApi.Spanner.V1.Model.IncludeReplicas)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.DirectedReadOptions do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.DirectedReadOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.DirectedReadOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
