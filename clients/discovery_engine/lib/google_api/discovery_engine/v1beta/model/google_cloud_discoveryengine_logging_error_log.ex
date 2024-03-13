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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorLog do
  @moduledoc """
  An error log which is reported to the Error Reporting system.

  ## Attributes

  *   `context` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorContext.t`, *default:* `nil`) - A description of the context in which the error occurred.
  *   `importPayload` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext.t`, *default:* `nil`) - The error payload that is populated on LRO import APIs.
  *   `message` (*type:* `String.t`, *default:* `nil`) - A message describing the error.
  *   `requestPayload` (*type:* `map()`, *default:* `nil`) - The API request payload, represented as a protocol buffer. Most API request types are supported—for example: * `type.googleapis.com/google.cloud.discoveryengine.v1alpha.DocumentService.CreateDocumentRequest` * `type.googleapis.com/google.cloud.discoveryengine.v1alpha.UserEventService.WriteUserEventRequest`
  *   `responsePayload` (*type:* `map()`, *default:* `nil`) - The API response payload, represented as a protocol buffer. This is used to log some "soft errors", where the response is valid but we consider there are some quality issues like unjoined events. The following API responses are supported, and no PII is included: * `google.cloud.discoveryengine.v1alpha.RecommendationService.Recommend` * `google.cloud.discoveryengine.v1alpha.UserEventService.WriteUserEvent` * `google.cloud.discoveryengine.v1alpha.UserEventService.CollectUserEvent`
  *   `serviceContext` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingServiceContext.t`, *default:* `nil`) - The service context in which this error has occurred.
  *   `status` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t`, *default:* `nil`) - The RPC status associated with the error log.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorContext.t()
            | nil,
          :importPayload =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext.t()
            | nil,
          :message => String.t() | nil,
          :requestPayload => map() | nil,
          :responsePayload => map() | nil,
          :serviceContext =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingServiceContext.t()
            | nil,
          :status => GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t() | nil
        }

  field(:context,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorContext
  )

  field(:importPayload,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext
  )

  field(:message)
  field(:requestPayload, type: :map)
  field(:responsePayload, type: :map)

  field(:serviceContext,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingServiceContext
  )

  field(:status, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorLog do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorLog.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingErrorLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end