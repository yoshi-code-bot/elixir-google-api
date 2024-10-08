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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse do
  @moduledoc """
  The response for listing the functional test execution data.

  ## Attributes

  *   `executions` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecution.t)`, *default:* `nil`) - The detailed information of requested executions
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token used to retrieve the next page results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :executions =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecution.t())
            | nil,
          :nextPageToken => String.t() | nil
        }

  field(:executions,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecution,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
