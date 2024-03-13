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

defmodule GoogleApi.Connectors.V2.Model.ListActionsResponse do
  @moduledoc """
  Response message for ActionService.ListActions

  ## Attributes

  *   `actions` (*type:* `list(GoogleApi.Connectors.V2.Model.Action.t)`, *default:* `nil`) - List of action metadata.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Next page token if more actions available.
  *   `unsupportedActionNames` (*type:* `list(String.t)`, *default:* `nil`) - List of actions which contain unsupported Datatypes. Check datatype.proto for more information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actions => list(GoogleApi.Connectors.V2.Model.Action.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unsupportedActionNames => list(String.t()) | nil
        }

  field(:actions, as: GoogleApi.Connectors.V2.Model.Action, type: :list)
  field(:nextPageToken)
  field(:unsupportedActionNames, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.ListActionsResponse do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.ListActionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.ListActionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end