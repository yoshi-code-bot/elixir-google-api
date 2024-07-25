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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuspensionAudit do
  @moduledoc """
  Contains when and by whom the suspension was resolved.

  ## Attributes

  *   `resolveTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which this suspension was resolved.
  *   `resolver` (*type:* `String.t`, *default:* `nil`) - Email address of the person who resolved this suspension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resolveTime => DateTime.t() | nil,
          :resolver => String.t() | nil
        }

  field(:resolveTime, as: DateTime)
  field(:resolver)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuspensionAudit do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuspensionAudit.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuspensionAudit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
