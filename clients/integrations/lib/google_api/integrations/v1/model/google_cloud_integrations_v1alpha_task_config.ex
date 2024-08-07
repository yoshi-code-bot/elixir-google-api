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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaTaskConfig do
  @moduledoc """
  The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.

  ## Attributes

  *   `conditionalFailurePolicies` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies.t`, *default:* `nil`) - Optional. The list of conditional failure policies that will be applied to the task in order.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided description intended to give additional business context about the task.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided label that is attached to this TaskConfig in the UI.
  *   `errorCatcherId` (*type:* `String.t`, *default:* `nil`) - Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  *   `externalTaskType` (*type:* `String.t`, *default:* `nil`) - Optional. External task type of the task
  *   `failurePolicy` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy.t`, *default:* `nil`) - Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  *   `jsonValidationOption` (*type:* `String.t`, *default:* `nil`) - Optional. If set, overrides the option configured in the Task implementation class.
  *   `nextTasks` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask.t)`, *default:* `nil`) - Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  *   `nextTasksExecutionPolicy` (*type:* `String.t`, *default:* `nil`) - Optional. The policy dictating the execution of the next set of tasks for the current task.
  *   `parameters` (*type:* `%{optional(String.t) => GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter.t}`, *default:* `nil`) - Optional. The customized parameters the user can pass to this task.
  *   `position` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCoordinate.t`, *default:* `nil`) - Optional. Informs the front-end application where to draw this error catcher config on the UI.
  *   `successPolicy` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuccessPolicy.t`, *default:* `nil`) - Optional. Determines what action to take upon successful task completion.
  *   `synchronousCallFailurePolicy` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy.t`, *default:* `nil`) - Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  *   `task` (*type:* `String.t`, *default:* `nil`) - Optional. The name for the task.
  *   `taskExecutionStrategy` (*type:* `String.t`, *default:* `nil`) - Optional. The policy dictating the execution strategy of this task.
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - Required. The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  *   `taskTemplate` (*type:* `String.t`, *default:* `nil`) - Optional. Used to define task-template name if task is of type task-template
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditionalFailurePolicies =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies.t()
            | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :errorCatcherId => String.t() | nil,
          :externalTaskType => String.t() | nil,
          :failurePolicy =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy.t() | nil,
          :jsonValidationOption => String.t() | nil,
          :nextTasks =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask.t()) | nil,
          :nextTasksExecutionPolicy => String.t() | nil,
          :parameters =>
            %{
              optional(String.t()) =>
                GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter.t()
            }
            | nil,
          :position =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCoordinate.t() | nil,
          :successPolicy =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuccessPolicy.t() | nil,
          :synchronousCallFailurePolicy =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy.t() | nil,
          :task => String.t() | nil,
          :taskExecutionStrategy => String.t() | nil,
          :taskId => String.t() | nil,
          :taskTemplate => String.t() | nil
        }

  field(:conditionalFailurePolicies,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies
  )

  field(:description)
  field(:displayName)
  field(:errorCatcherId)
  field(:externalTaskType)

  field(:failurePolicy,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy
  )

  field(:jsonValidationOption)

  field(:nextTasks,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask,
    type: :list
  )

  field(:nextTasksExecutionPolicy)

  field(:parameters,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter,
    type: :map
  )

  field(:position, as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCoordinate)

  field(:successPolicy,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSuccessPolicy
  )

  field(:synchronousCallFailurePolicy,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaFailurePolicy
  )

  field(:task)
  field(:taskExecutionStrategy)
  field(:taskId)
  field(:taskTemplate)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaTaskConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaTaskConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaTaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
