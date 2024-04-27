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

defmodule GoogleApi.Dataform.V1beta1.Model.WorkflowInvocationAction do
  @moduledoc """
  Represents a single action in a workflow invocation.

  ## Attributes

  *   `bigqueryAction` (*type:* `GoogleApi.Dataform.V1beta1.Model.BigQueryAction.t`, *default:* `nil`) - Output only. The workflow action's bigquery action details.
  *   `canonicalTarget` (*type:* `GoogleApi.Dataform.V1beta1.Model.Target.t`, *default:* `nil`) - Output only. The action's identifier if the project had been compiled without any overrides configured. Unique within the compilation result.
  *   `failureReason` (*type:* `String.t`, *default:* `nil`) - Output only. If and only if action's state is FAILED a failure reason is set.
  *   `invocationTiming` (*type:* `GoogleApi.Dataform.V1beta1.Model.Interval.t`, *default:* `nil`) - Output only. This action's timing details. `start_time` will be set if the action is in [RUNNING, SUCCEEDED, CANCELLED, FAILED] state. `end_time` will be set if the action is in [SUCCEEDED, CANCELLED, FAILED] state.
  *   `notebookAction` (*type:* `GoogleApi.Dataform.V1beta1.Model.NotebookAction.t`, *default:* `nil`) - Output only. The workflow action's notebook action details.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. This action's current state.
  *   `target` (*type:* `GoogleApi.Dataform.V1beta1.Model.Target.t`, *default:* `nil`) - Output only. This action's identifier. Unique within the workflow invocation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryAction => GoogleApi.Dataform.V1beta1.Model.BigQueryAction.t() | nil,
          :canonicalTarget => GoogleApi.Dataform.V1beta1.Model.Target.t() | nil,
          :failureReason => String.t() | nil,
          :invocationTiming => GoogleApi.Dataform.V1beta1.Model.Interval.t() | nil,
          :notebookAction => GoogleApi.Dataform.V1beta1.Model.NotebookAction.t() | nil,
          :state => String.t() | nil,
          :target => GoogleApi.Dataform.V1beta1.Model.Target.t() | nil
        }

  field(:bigqueryAction, as: GoogleApi.Dataform.V1beta1.Model.BigQueryAction)
  field(:canonicalTarget, as: GoogleApi.Dataform.V1beta1.Model.Target)
  field(:failureReason)
  field(:invocationTiming, as: GoogleApi.Dataform.V1beta1.Model.Interval)
  field(:notebookAction, as: GoogleApi.Dataform.V1beta1.Model.NotebookAction)
  field(:state)
  field(:target, as: GoogleApi.Dataform.V1beta1.Model.Target)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowInvocationAction do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.WorkflowInvocationAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowInvocationAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
