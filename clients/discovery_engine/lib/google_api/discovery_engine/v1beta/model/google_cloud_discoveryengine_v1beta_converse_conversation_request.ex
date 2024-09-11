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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConverseConversationRequest do
  @moduledoc """
  Request message for ConversationalSearchService.ConverseConversation method.

  ## Attributes

  *   `boostSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t`, *default:* `nil`) - Boost specification to boost certain documents in search results which may affect the converse response. For more information on boosting, see [Boosting](https://cloud.google.com/retail/docs/boosting#boost)
  *   `conversation` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConversation.t`, *default:* `nil`) - The conversation to be used by auto session only. The name field will be ignored as we automatically assign new name for the conversation in auto session.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the documents being filtered. Filter expression is case-sensitive. This will be used to filter search results which may affect the summary response. If this field is unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by mapping the LHS filter key to a key property defined in the Vertex AI Search backend -- this mapping is defined by the customer in their schema. For example a media customer might have a field 'name' in their schema. In this case the filter would look like this: filter --> name:'ANY("king kong")' For more information about filtering including syntax and filter operators, see [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  *   `query` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaTextInput.t`, *default:* `nil`) - Required. Current user input.
  *   `safeSearch` (*type:* `boolean()`, *default:* `nil`) - Whether to turn on safe search.
  *   `servingConfig` (*type:* `String.t`, *default:* `nil`) - The resource name of the Serving Config to use. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/servingConfigs/{serving_config_id}` If this is not set, the default serving config will be used.
  *   `summarySpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec.t`, *default:* `nil`) - A specification for configuring the summary returned in the response.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t()
            | nil,
          :conversation =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConversation.t()
            | nil,
          :filter => String.t() | nil,
          :query =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaTextInput.t()
            | nil,
          :safeSearch => boolean() | nil,
          :servingConfig => String.t() | nil,
          :summarySpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec.t()
            | nil,
          :userLabels => map() | nil
        }

  field(:boostSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
  )

  field(:conversation,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConversation
  )

  field(:filter)

  field(:query,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaTextInput
  )

  field(:safeSearch)
  field(:servingConfig)

  field(:summarySpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
  )

  field(:userLabels, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConverseConversationRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConverseConversationRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaConverseConversationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
