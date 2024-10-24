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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequest do
  @moduledoc """
  The request message for Conversations.SearchKnowledge.

  ## Attributes

  *   `conversation` (*type:* `String.t`, *default:* `nil`) - Optional. The conversation (between human agent and end user) where the search request is triggered. Format: `projects//locations//conversations/`.
  *   `conversationProfile` (*type:* `String.t`, *default:* `nil`) - Required. The conversation profile used to configure the search. Format: `projects//locations//conversationProfiles/`.
  *   `endUserMetadata` (*type:* `map()`, *default:* `nil`) - Optional. Information about the end-user to improve the relevance and accuracy of generative answers. This will be interpreted and used by a language model, so, for good results, the data should be self-descriptive, and in a simple structure. Example: ```json { "subscription plan": "Business Premium Plus", "devices owned": [ {"model": "Google Pixel 7"}, {"model": "Google Pixel Tablet"} ] } ```
  *   `exactSearch` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to search the query exactly without query rewrite.
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the latest conversation message when the request is triggered. Format: `projects//locations//conversations//messages/`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The parent resource contains the conversation profile Format: 'projects/' or `projects//locations/`.
  *   `query` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextInput.t`, *default:* `nil`) - Required. The natural language text query for knowledge search.
  *   `querySource` (*type:* `String.t`, *default:* `nil`) - Optional. The source of the query in the request.
  *   `searchConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig.t`, *default:* `nil`) - Optional. Configuration specific to search queries with data stores.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the search session. The session_id can be combined with Dialogflow V3 Agent ID retrieved from conversation profile or on its own to identify a search session. The search history of the same session will impact the search result. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length must not exceed 36 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversation => String.t() | nil,
          :conversationProfile => String.t() | nil,
          :endUserMetadata => map() | nil,
          :exactSearch => boolean() | nil,
          :latestMessage => String.t() | nil,
          :parent => String.t() | nil,
          :query => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextInput.t() | nil,
          :querySource => String.t() | nil,
          :searchConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig.t()
            | nil,
          :sessionId => String.t() | nil
        }

  field(:conversation)
  field(:conversationProfile)
  field(:endUserMetadata, type: :map)
  field(:exactSearch)
  field(:latestMessage)
  field(:parent)
  field(:query, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextInput)
  field(:querySource)

  field(:searchConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig
  )

  field(:sessionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
