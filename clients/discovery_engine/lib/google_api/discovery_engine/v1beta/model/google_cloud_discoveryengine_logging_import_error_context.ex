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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext do
  @moduledoc """
  The error payload that is populated on LRO import APIs, including the following: * `google.cloud.discoveryengine.v1alpha.DocumentService.ImportDocuments` * `google.cloud.discoveryengine.v1alpha.UserEventService.ImportUserEvents`

  ## Attributes

  *   `document` (*type:* `String.t`, *default:* `nil`) - The detailed content which caused the error on importing a document.
  *   `gcsPath` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage file path of the import source. Can be set for batch operation error.
  *   `lineNumber` (*type:* `String.t`, *default:* `nil`) - Line number of the content in file. Should be empty for permission or batch operation error.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - The operation resource name of the LRO.
  *   `userEvent` (*type:* `String.t`, *default:* `nil`) - The detailed content which caused the error on importing a user event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => String.t() | nil,
          :gcsPath => String.t() | nil,
          :lineNumber => String.t() | nil,
          :operation => String.t() | nil,
          :userEvent => String.t() | nil
        }

  field(:document)
  field(:gcsPath)
  field(:lineNumber)
  field(:operation)
  field(:userEvent)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineLoggingImportErrorContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end