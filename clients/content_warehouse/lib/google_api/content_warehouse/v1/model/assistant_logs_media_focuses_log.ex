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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog do
  @moduledoc """
  Following are the MDA compatible loggings for media focus, default settings and nearby devices.

  ## Attributes

  *   `dialogTriggered` (*type:* `boolean()`, *default:* `nil`) - 
  *   `localMediaFocus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t`, *default:* `nil`) - 
  *   `mediaFocuses` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t)`, *default:* `nil`) - Deprecated, use nearby_media_focuses instead.
  *   `nearbyMediaFocuses` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t)`, *default:* `nil`) - MediaFouces found on nearby devices.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dialogTriggered => boolean() | nil,
          :localMediaFocus =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t() | nil,
          :mediaFocuses =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t()) | nil,
          :nearbyMediaFocuses =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t()) | nil
        }

  field(:dialogTriggered)
  field(:localMediaFocus, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog)

  field(:mediaFocuses,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog,
    type: :list
  )

  field(:nearbyMediaFocuses,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
