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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsVideoFilter do
  @moduledoc """
  Specification of which video features can be used.

  ## Attributes

  *   `autoplayToggleState` (*type:* `String.t`, *default:* `nil`) - State that indicates whether autoplay is enabled for youtube videos.
  *   `availableProviders` (*type:* `list(String.t)`, *default:* `nil`) - Providers available at the time user updated settings.
  *   `providerFilterState` (*type:* `String.t`, *default:* `nil`) - Represents the state for the video provider filter.
  *   `state` (*type:* `String.t`, *default:* `nil`) - 
  *   `whitelistedProviders` (*type:* `list(String.t)`, *default:* `nil`) - Contains the list of whitelisted video providers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoplayToggleState => String.t() | nil,
          :availableProviders => list(String.t()) | nil,
          :providerFilterState => String.t() | nil,
          :state => String.t() | nil,
          :whitelistedProviders => list(String.t()) | nil
        }

  field(:autoplayToggleState)
  field(:availableProviders, type: :list)
  field(:providerFilterState)
  field(:state)
  field(:whitelistedProviders, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsVideoFilter do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsVideoFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsVideoFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
