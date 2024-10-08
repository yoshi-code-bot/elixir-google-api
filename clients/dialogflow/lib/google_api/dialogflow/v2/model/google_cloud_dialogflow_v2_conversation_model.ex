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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModel do
  @moduledoc """
  Represents a conversation model.

  ## Attributes

  *   `articleSuggestionModelMetadata` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.t`, *default:* `nil`) - Metadata for article suggestion models.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this model.
  *   `datasets` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputDataset.t)`, *default:* `nil`) - Required. Datasets used to create model.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the model. At most 64 bytes long.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  *   `name` (*type:* `String.t`, *default:* `nil`) - ConversationModel resource name. Format: `projects//conversationModels/`
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. A read only boolean field reflecting Zone Isolation status of the model.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. A read only boolean field reflecting Zone Separation status of the model.
  *   `smartReplyModelMetadata` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyModelMetadata.t`, *default:* `nil`) - Metadata for smart reply models.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the model. A model can only serve prediction requests after it gets deployed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :articleSuggestionModelMetadata =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :datasets =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputDataset.t()) | nil,
          :displayName => String.t() | nil,
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :smartReplyModelMetadata =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyModelMetadata.t() | nil,
          :state => String.t() | nil
        }

  field(:articleSuggestionModelMetadata,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
  )

  field(:createTime, as: DateTime)

  field(:datasets,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputDataset,
    type: :list
  )

  field(:displayName)
  field(:languageCode)
  field(:name)
  field(:satisfiesPzi)
  field(:satisfiesPzs)

  field(:smartReplyModelMetadata,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyModelMetadata
  )

  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModel do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModel.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
