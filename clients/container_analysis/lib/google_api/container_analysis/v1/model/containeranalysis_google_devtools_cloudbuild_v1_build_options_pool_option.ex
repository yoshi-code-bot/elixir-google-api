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

defmodule GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption do
  @moduledoc """
  Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/{project}/locations/{location}/workerPools/{workerPoolId}
  *   `workerConfig` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOptionWorkerConfig.t`, *default:* `nil`) - Configuration per workload.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :workerConfig =>
            GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOptionWorkerConfig.t()
            | nil
        }

  field(:name)

  field(:workerConfig,
    as:
      GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOptionWorkerConfig
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
