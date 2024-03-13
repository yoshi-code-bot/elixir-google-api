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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceAnnotationLog do
  @moduledoc """
  Device annotation mention from query

  ## Attributes

  *   `rawTextFromQuery` (*type:* `String.t`, *default:* `nil`) - The raw text mentioning a device from the query, such as "any tv".
  *   `type` (*type:* `String.t`, *default:* `nil`) - The annotation type mentioned in the query.
  *   `userDefinedName` (*type:* `String.t`, *default:* `nil`) - The matched device name set by the user, such as "big screen tv".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rawTextFromQuery => String.t() | nil,
          :type => String.t() | nil,
          :userDefinedName => String.t() | nil
        }

  field(:rawTextFromQuery)
  field(:type)
  field(:userDefinedName)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceAnnotationLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceAnnotationLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceAnnotationLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
