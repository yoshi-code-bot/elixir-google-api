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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTimeProperty do
  @moduledoc """
  Represents properties about a matched DateTime value. Will only be populated for @sys.date-time, @sys.date and @sys.time.

  ## Attributes

  *   `datetimeType` (*type:* `String.t`, *default:* `nil`) - Since datetime is a superset of date, time and date&time, this field is used to indicate which type the associated DateTime object belongs to.
  *   `relativeDatetimeType` (*type:* `String.t`, *default:* `nil`) - The relative relationship between this DateTime value and DateTime&Timezone info provided in ClassifyRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datetimeType => String.t() | nil,
          :relativeDatetimeType => String.t() | nil
        }

  field(:datetimeType)
  field(:relativeDatetimeType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTimeProperty do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTimeProperty.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTimeProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end