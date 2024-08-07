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

defmodule GoogleApi.CloudAsset.V1.Model.QueryAssetsResponse do
  @moduledoc """
  QueryAssets response.

  ## Attributes

  *   `done` (*type:* `boolean()`, *default:* `nil`) - The query response, which can be either an `error` or a valid `response`. If `done` == `false` and the query result is being saved in an output, the output_config field will be set. If `done` == `true`, exactly one of `error`, `query_result` or `output_config` will be set. [done] is unset unless the [QueryAssetsResponse] contains a [QueryAssetsResponse.job_reference].
  *   `error` (*type:* `GoogleApi.CloudAsset.V1.Model.Status.t`, *default:* `nil`) - Error status.
  *   `jobReference` (*type:* `String.t`, *default:* `nil`) - Reference to a query job.
  *   `outputConfig` (*type:* `GoogleApi.CloudAsset.V1.Model.QueryAssetsOutputConfig.t`, *default:* `nil`) - Output configuration, which indicates that instead of being returned in an API response on the fly, the query result will be saved in a specific output.
  *   `queryResult` (*type:* `GoogleApi.CloudAsset.V1.Model.QueryResult.t`, *default:* `nil`) - Result of the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean() | nil,
          :error => GoogleApi.CloudAsset.V1.Model.Status.t() | nil,
          :jobReference => String.t() | nil,
          :outputConfig => GoogleApi.CloudAsset.V1.Model.QueryAssetsOutputConfig.t() | nil,
          :queryResult => GoogleApi.CloudAsset.V1.Model.QueryResult.t() | nil
        }

  field(:done)
  field(:error, as: GoogleApi.CloudAsset.V1.Model.Status)
  field(:jobReference)
  field(:outputConfig, as: GoogleApi.CloudAsset.V1.Model.QueryAssetsOutputConfig)
  field(:queryResult, as: GoogleApi.CloudAsset.V1.Model.QueryResult)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.QueryAssetsResponse do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.QueryAssetsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.QueryAssetsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
