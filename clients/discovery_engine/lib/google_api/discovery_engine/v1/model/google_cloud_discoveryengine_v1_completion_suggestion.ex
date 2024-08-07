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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionSuggestion do
  @moduledoc """
  Autocomplete suggestions that are imported from Customer.

  ## Attributes

  *   `alternativePhrases` (*type:* `list(String.t)`, *default:* `nil`) - Alternative matching phrases for this suggestion.
  *   `frequency` (*type:* `String.t`, *default:* `nil`) - Frequency of this suggestion. Will be used to rank suggestions when score is not available.
  *   `globalScore` (*type:* `float()`, *default:* `nil`) - Global score of this suggestion. Control how this suggestion would be scored / ranked.
  *   `groupId` (*type:* `String.t`, *default:* `nil`) - If two suggestions have the same groupId, they will not be returned together. Instead the one ranked higher will be returned. This can be used to deduplicate semantically identical suggestions.
  *   `groupScore` (*type:* `float()`, *default:* `nil`) - The score of this suggestion within its group.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - BCP-47 language code of this suggestion.
  *   `suggestion` (*type:* `String.t`, *default:* `nil`) - Required. The suggestion text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternativePhrases => list(String.t()) | nil,
          :frequency => String.t() | nil,
          :globalScore => float() | nil,
          :groupId => String.t() | nil,
          :groupScore => float() | nil,
          :languageCode => String.t() | nil,
          :suggestion => String.t() | nil
        }

  field(:alternativePhrases, type: :list)
  field(:frequency)
  field(:globalScore)
  field(:groupId)
  field(:groupScore)
  field(:languageCode)
  field(:suggestion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionSuggestion do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionSuggestion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionSuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
