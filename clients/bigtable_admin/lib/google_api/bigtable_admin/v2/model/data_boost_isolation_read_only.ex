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

defmodule GoogleApi.BigtableAdmin.V2.Model.DataBoostIsolationReadOnly do
  @moduledoc """
  Data Boost is a serverless compute capability that lets you run high-throughput read jobs on your Bigtable data, without impacting the performance of the clusters that handle your application traffic. Currently, Data Boost exclusively supports read-only use-cases with single-cluster routing. Data Boost reads are only guaranteed to see the results of writes that were written at least 30 minutes ago. This means newly written values may not become visible for up to 30m, and also means that old values may remain visible for up to 30m after being deleted or overwritten. To mitigate the staleness of the data, users may either wait 30m, or use CheckConsistency.

  ## Attributes

  *   `computeBillingOwner` (*type:* `String.t`, *default:* `nil`) - The Compute Billing Owner for this Data Boost App Profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computeBillingOwner => String.t() | nil
        }

  field(:computeBillingOwner)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.DataBoostIsolationReadOnly do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.DataBoostIsolationReadOnly.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.DataBoostIsolationReadOnly do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end