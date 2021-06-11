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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action do
  @moduledoc """
  An action that describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.

  ## Attributes

  *   `function` (*type:* `String.t`, *default:* `nil`) - Apps Script function to invoke when the containing element is clicked/activated.
  *   `loadIndicator` (*type:* `String.t`, *default:* `nil`) - 
  *   `parameters` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1ActionParameter.t)`, *default:* `nil`) - List of action parameters.
  *   `persistValues` (*type:* `boolean()`, *default:* `nil`) - Indicates whether form values persist after the action. The default value is `false`. If `true`, form values remain after the action is triggered. When using [LoadIndicator.NONE](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator) for actions, `persist_values` = `true`is recommended, as it ensures that any changes made by the user after form or on change actions are sent to the server are not overwritten by the response. If `false`, the form values are cleared when the action is triggered. When `persist_values` is set to `false`, it is strongly recommended that the card use [LoadIndicator.SPINNER](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator) for all actions, as this locks the UI to ensure no changes are made by the user while the action is being processed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :function => String.t() | nil,
          :loadIndicator => String.t() | nil,
          :parameters => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1ActionParameter.t()) | nil,
          :persistValues => boolean() | nil
        }

  field(:function)
  field(:loadIndicator)
  field(:parameters, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1ActionParameter, type: :list)
  field(:persistValues)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
