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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler do
  @moduledoc """
  An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.

  ## Attributes

  *   `event` (*type:* `String.t`, *default:* `nil`) - Required. The name of the event to handle.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of this event handler.
  *   `targetFlow` (*type:* `String.t`, *default:* `nil`) - The target flow to transition to. Format: `projects//locations//agents//flows/`.
  *   `targetPage` (*type:* `String.t`, *default:* `nil`) - The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  *   `targetPlaybook` (*type:* `String.t`, *default:* `nil`) - The target playbook to transition to. Format: `projects//locations//agents//playbooks/`.
  *   `triggerFulfillment` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t`, *default:* `nil`) - The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :event => String.t() | nil,
          :name => String.t() | nil,
          :targetFlow => String.t() | nil,
          :targetPage => String.t() | nil,
          :targetPlaybook => String.t() | nil,
          :triggerFulfillment =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t() | nil
        }

  field(:event)
  field(:name)
  field(:targetFlow)
  field(:targetPage)
  field(:targetPlaybook)

  field(:triggerFulfillment,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
