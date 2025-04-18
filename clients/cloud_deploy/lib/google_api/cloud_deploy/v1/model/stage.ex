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

defmodule GoogleApi.CloudDeploy.V1.Model.Stage do
  @moduledoc """
  Stage specifies a location to which to deploy.

  ## Attributes

  *   `deployParameters` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.DeployParameters.t)`, *default:* `nil`) - Optional. The deploy parameters to use for the target in this stage.
  *   `profiles` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  *   `strategy` (*type:* `GoogleApi.CloudDeploy.V1.Model.Strategy.t`, *default:* `nil`) - Optional. The strategy to use for a `Rollout` to this stage.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - Optional. The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployParameters => list(GoogleApi.CloudDeploy.V1.Model.DeployParameters.t()) | nil,
          :profiles => list(String.t()) | nil,
          :strategy => GoogleApi.CloudDeploy.V1.Model.Strategy.t() | nil,
          :targetId => String.t() | nil
        }

  field(:deployParameters, as: GoogleApi.CloudDeploy.V1.Model.DeployParameters, type: :list)
  field(:profiles, type: :list)
  field(:strategy, as: GoogleApi.CloudDeploy.V1.Model.Strategy)
  field(:targetId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.Stage do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.Stage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.Stage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
