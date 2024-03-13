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

defmodule GoogleApi.Dataform.V1beta1.Model.WorkflowInvocation do
  @moduledoc """
  Represents a single invocation of a compilation result.

  ## Attributes

  *   `compilationResult` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  *   `invocationConfig` (*type:* `GoogleApi.Dataform.V1beta1.Model.InvocationConfig.t`, *default:* `nil`) - Immutable. If left unset, a default InvocationConfig will be used.
  *   `invocationTiming` (*type:* `GoogleApi.Dataform.V1beta1.Model.Interval.t`, *default:* `nil`) - Output only. This workflow invocation's timing details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The workflow invocation's name.
  *   `resolvedCompilationResult` (*type:* `String.t`, *default:* `nil`) - Output only. The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. This workflow invocation's current state.
  *   `workflowConfig` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compilationResult => String.t() | nil,
          :invocationConfig => GoogleApi.Dataform.V1beta1.Model.InvocationConfig.t() | nil,
          :invocationTiming => GoogleApi.Dataform.V1beta1.Model.Interval.t() | nil,
          :name => String.t() | nil,
          :resolvedCompilationResult => String.t() | nil,
          :state => String.t() | nil,
          :workflowConfig => String.t() | nil
        }

  field(:compilationResult)
  field(:invocationConfig, as: GoogleApi.Dataform.V1beta1.Model.InvocationConfig)
  field(:invocationTiming, as: GoogleApi.Dataform.V1beta1.Model.Interval)
  field(:name)
  field(:resolvedCompilationResult)
  field(:state)
  field(:workflowConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowInvocation do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.WorkflowInvocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowInvocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end