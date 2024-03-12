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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest do
  @moduledoc """
  Request to import an issue model.

  ## Attributes

  *   `createNewModel` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, will create a new issue model from the imported file with randomly generated IDs for the issue model and corresponding issues. Otherwise, replaces an existing model with the same ID as the file.
  *   `gcsSource` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource.t`, *default:* `nil`) - Google Cloud Storage source message.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The parent resource of the issue model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createNewModel => boolean() | nil,
          :gcsSource =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource.t()
            | nil,
          :parent => String.t() | nil
        }

  field(:createNewModel)

  field(:gcsSource,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
  )

  field(:parent)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
