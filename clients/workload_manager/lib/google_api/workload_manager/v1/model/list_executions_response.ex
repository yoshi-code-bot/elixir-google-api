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

defmodule GoogleApi.WorkloadManager.V1.Model.ListExecutionsResponse do
  @moduledoc """
  Message for response to listing Executions

  ## Attributes

  *   `executions` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.Execution.t)`, *default:* `nil`) - The list of Execution
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token identifying a page of results the server should return.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :executions => list(GoogleApi.WorkloadManager.V1.Model.Execution.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:executions, as: GoogleApi.WorkloadManager.V1.Model.Execution, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.ListExecutionsResponse do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.ListExecutionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.ListExecutionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end