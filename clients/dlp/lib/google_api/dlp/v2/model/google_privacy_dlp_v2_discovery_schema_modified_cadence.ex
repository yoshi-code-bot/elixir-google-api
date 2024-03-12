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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence do
  @moduledoc """
  The cadence at which to update data profiles when a schema is modified.

  ## Attributes

  *   `frequency` (*type:* `String.t`, *default:* `nil`) - How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  *   `types` (*type:* `list(String.t)`, *default:* `nil`) - The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :frequency => String.t() | nil,
          :types => list(String.t()) | nil
        }

  field(:frequency)
  field(:types, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end