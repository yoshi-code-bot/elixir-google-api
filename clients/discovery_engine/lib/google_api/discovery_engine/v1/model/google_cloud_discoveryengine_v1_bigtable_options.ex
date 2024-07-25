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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptions do
  @moduledoc """
  The Bigtable Options object that contains information to support the import.

  ## Attributes

  *   `families` (*type:* `%{optional(String.t) => GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily.t}`, *default:* `nil`) - The mapping from family names to an object that contains column families level information for the given column family. If a family is not present in this map it will be ignored.
  *   `keyFieldName` (*type:* `String.t`, *default:* `nil`) - The field name used for saving row key value in the document. The name has to match the pattern `a-zA-Z0-9*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :families =>
            %{
              optional(String.t()) =>
                GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily.t()
            }
            | nil,
          :keyFieldName => String.t() | nil
        }

  field(:families,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily,
    type: :map
  )

  field(:keyFieldName)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptions do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigtableOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
