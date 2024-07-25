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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  @moduledoc """
  Apigee runtime instance.

  ## Attributes

  *   `accessLoggingConfig` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AccessLoggingConfig.t`, *default:* `nil`) - Optional. Access logging configuration enables the access logging feature at the instance. Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  *   `consumerAcceptList` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the instance was created in milliseconds since epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the instance.
  *   `diskEncryptionKeyName` (*type:* `String.t`, *default:* `nil`) - Customer Managed Encryption Key (CMEK) used for disk and volume encryption. If not specified, a Google-Managed encryption key will be used. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name for the instance.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Output only. Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.
  *   `ipRange` (*type:* `String.t`, *default:* `nil`) - Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the instance was last modified in milliseconds since epoch.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Required. Compute Engine location where the instance resides.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\\d]$`.
  *   `peeringCidrRange` (*type:* `String.t`, *default:* `nil`) - Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  *   `port` (*type:* `String.t`, *default:* `nil`) - Output only. Port number of the exposed Apigee endpoint.
  *   `runtimeVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.
  *   `serviceAttachment` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the instance. Values other than `ACTIVE` means the resource is not ready to use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLoggingConfig =>
            GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AccessLoggingConfig.t() | nil,
          :consumerAcceptList => list(String.t()) | nil,
          :createdAt => String.t() | nil,
          :description => String.t() | nil,
          :diskEncryptionKeyName => String.t() | nil,
          :displayName => String.t() | nil,
          :host => String.t() | nil,
          :ipRange => String.t() | nil,
          :lastModifiedAt => String.t() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :peeringCidrRange => String.t() | nil,
          :port => String.t() | nil,
          :runtimeVersion => String.t() | nil,
          :serviceAttachment => String.t() | nil,
          :state => String.t() | nil
        }

  field(:accessLoggingConfig, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AccessLoggingConfig)

  field(:consumerAcceptList, type: :list)
  field(:createdAt)
  field(:description)
  field(:diskEncryptionKeyName)
  field(:displayName)
  field(:host)
  field(:ipRange)
  field(:lastModifiedAt)
  field(:location)
  field(:name)
  field(:peeringCidrRange)
  field(:port)
  field(:runtimeVersion)
  field(:serviceAttachment)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
