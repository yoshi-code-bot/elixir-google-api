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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Conversation do
  @moduledoc """
  Represents a conversation. A conversation is an interaction between an agent, including live agents and Dialogflow agents, and a support customer. Conversations can include phone calls and text-based chat sessions.

  ## Attributes

  *   `conversationProfile` (*type:* `String.t`, *default:* `nil`) - Required. The Conversation Profile to be used to configure this Conversation. This field cannot be updated. Format: `projects//locations//conversationProfiles/`.
  *   `conversationStage` (*type:* `String.t`, *default:* `nil`) - Optional. The stage of a conversation. It indicates whether the virtual agent or a human agent is handling the conversation. If the conversation is created with the conversation profile that has Dialogflow config set, defaults to ConversationStage.VIRTUAL_AGENT_STAGE; Otherwise, defaults to ConversationStage.HUMAN_ASSIST_STAGE. If the conversation is created with the conversation profile that has Dialogflow config set but explicitly sets conversation_stage to ConversationStage.HUMAN_ASSIST_STAGE, it skips ConversationStage.VIRTUAL_AGENT_STAGE stage and directly goes to ConversationStage.HUMAN_ASSIST_STAGE.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the conversation was finished.
  *   `lifecycleState` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the Conversation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The unique identifier of this conversation. Format: `projects//locations//conversations/`.
  *   `phoneNumber` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationPhoneNumber.t`, *default:* `nil`) - Output only. It will not be empty if the conversation is to be connected over telephony.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the conversation was started.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationProfile => String.t() | nil,
          :conversationStage => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :lifecycleState => String.t() | nil,
          :name => String.t() | nil,
          :phoneNumber =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationPhoneNumber.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:conversationProfile)
  field(:conversationStage)
  field(:endTime, as: DateTime)
  field(:lifecycleState)
  field(:name)

  field(:phoneNumber,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationPhoneNumber
  )

  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Conversation do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Conversation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Conversation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
