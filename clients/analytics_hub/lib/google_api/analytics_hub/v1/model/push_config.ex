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

defmodule GoogleApi.AnalyticsHub.V1.Model.PushConfig do
  @moduledoc """
  Configuration for a push delivery endpoint.

  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { "x-goog-version": "v1" }`
  *   `noWrapper` (*type:* `GoogleApi.AnalyticsHub.V1.Model.NoWrapper.t`, *default:* `nil`) - Optional. When set, the payload to the push endpoint is not wrapped.
  *   `oidcToken` (*type:* `GoogleApi.AnalyticsHub.V1.Model.OidcToken.t`, *default:* `nil`) - Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  *   `pubsubWrapper` (*type:* `GoogleApi.AnalyticsHub.V1.Model.PubsubWrapper.t`, *default:* `nil`) - Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  *   `pushEndpoint` (*type:* `String.t`, *default:* `nil`) - Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map() | nil,
          :noWrapper => GoogleApi.AnalyticsHub.V1.Model.NoWrapper.t() | nil,
          :oidcToken => GoogleApi.AnalyticsHub.V1.Model.OidcToken.t() | nil,
          :pubsubWrapper => GoogleApi.AnalyticsHub.V1.Model.PubsubWrapper.t() | nil,
          :pushEndpoint => String.t() | nil
        }

  field(:attributes, type: :map)
  field(:noWrapper, as: GoogleApi.AnalyticsHub.V1.Model.NoWrapper)
  field(:oidcToken, as: GoogleApi.AnalyticsHub.V1.Model.OidcToken)
  field(:pubsubWrapper, as: GoogleApi.AnalyticsHub.V1.Model.PubsubWrapper)
  field(:pushEndpoint)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.PushConfig do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.PushConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.PushConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
