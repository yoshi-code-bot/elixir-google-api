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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData do
  @moduledoc """
  Eventing runtime data has the details related to eventing managed by the system.

  ## Attributes

  *   `eventsListenerEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Events listener endpoint. The value will populated after provisioning the events listener.
  *   `eventsListenerPscSa` (*type:* `String.t`, *default:* `nil`) - Output only. Events listener PSC Service attachment. The value will be populated after provisioning the events listener with private connectivity enabled.
  *   `status` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingStatus.t`, *default:* `nil`) - Output only. Current status of eventing.
  *   `webhookData` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.t`, *default:* `nil`) - Output only. Webhook data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventsListenerEndpoint => String.t() | nil,
          :eventsListenerPscSa => String.t() | nil,
          :status =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingStatus.t() | nil,
          :webhookData =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.t()
            | nil
        }

  field(:eventsListenerEndpoint)
  field(:eventsListenerPscSa)
  field(:status, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingStatus)

  field(:webhookData,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
