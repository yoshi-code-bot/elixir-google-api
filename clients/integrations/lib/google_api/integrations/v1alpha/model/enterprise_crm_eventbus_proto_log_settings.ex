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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoLogSettings do
  @moduledoc """
  The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.

  ## Attributes

  *   `logFieldName` (*type:* `String.t`, *default:* `nil`) - The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  *   `sanitizeOptions` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsSanitizeOptions.t`, *default:* `nil`) - Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  *   `seedPeriod` (*type:* `String.t`, *default:* `nil`) - 
  *   `seedScope` (*type:* `String.t`, *default:* `nil`) - 
  *   `shorteningLimits` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsFieldLimits.t`, *default:* `nil`) - Contains the field limits for shortening, such as max string length and max array length.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :logFieldName => String.t() | nil,
          :sanitizeOptions =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsSanitizeOptions.t() | nil,
          :seedPeriod => String.t() | nil,
          :seedScope => String.t() | nil,
          :shorteningLimits =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsFieldLimits.t() | nil
        }

  field(:logFieldName)

  field(:sanitizeOptions,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsSanitizeOptions
  )

  field(:seedPeriod)
  field(:seedScope)

  field(:shorteningLimits,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmLoggingGwsFieldLimits
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoLogSettings do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoLogSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoLogSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end