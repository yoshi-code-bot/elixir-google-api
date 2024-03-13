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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceDailyPattern do
  @moduledoc """
  Pattern for when in the day the repeating task should trigger. Applies to all frequencies greater than or equal to DAILY. Exactly one of the containing fields should be set (i.e. a specific time or period).

  ## Attributes

  *   `dayPeriod` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t`, *default:* `nil`) - 
  *   `timeOfDay` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayPeriod =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t() | nil,
          :timeOfDay =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t() | nil
        }

  field(:dayPeriod, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation)
  field(:timeOfDay, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceDailyPattern do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceDailyPattern.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceDailyPattern do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end