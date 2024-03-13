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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppCapabilitiesDelta do
  @moduledoc """
  Used to describe the incremental change of app capabilities of the device installed apps reported to the server.

  ## Attributes

  *   `appIntegrationsSettings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppIntegrationsSettings.t`, *default:* `nil`) - Currently unused. Will be used in the future when integrating with incremental app capabilities.
  *   `providerDelta` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesProviderDelta.t`, *default:* `nil`) - The installed app of the provider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appIntegrationsSettings =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppIntegrationsSettings.t() | nil,
          :providerDelta =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesProviderDelta.t() | nil
        }

  field(:appIntegrationsSettings,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppIntegrationsSettings
  )

  field(:providerDelta, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesProviderDelta)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppCapabilitiesDelta do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppCapabilitiesDelta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiAppCapabilitiesDelta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
