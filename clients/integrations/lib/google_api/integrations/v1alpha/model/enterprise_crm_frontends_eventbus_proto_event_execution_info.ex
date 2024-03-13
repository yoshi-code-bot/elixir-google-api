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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo do
  @moduledoc """
  Contains all the execution details for a workflow instance. Next available id: 24

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The event data user sends as request.
  *   `createTime` (*type:* `String.t`, *default:* `nil`) - Auto-generated.
  *   `errorCode` (*type:* `GoogleApi.Integrations.V1alpha.Model.CrmlogErrorCode.t`, *default:* `nil`) - Final error-code if event failed.
  *   `errors` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoErrorDetail.t)`, *default:* `nil`) - Errors, warnings, and informationals associated with the workflow/task. The order in which the errors were added by the workflow/task is maintained.
  *   `eventExecutionDetails` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails.t`, *default:* `nil`) - The execution info about this event.
  *   `eventExecutionInfoId` (*type:* `String.t`, *default:* `nil`) - Auto-generated primary key.
  *   `executionTraceInfo` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo.t`, *default:* `nil`) - Execution trace info to aggregate parent-child executions.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Auto-generated.
  *   `postMethod` (*type:* `String.t`, *default:* `nil`) - The ways user posts this event.
  *   `product` (*type:* `String.t`, *default:* `nil`) - Which Google product the execution_info belongs to. If not set, the execution_info belongs to Integration Platform by default.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. This is used to de-dup incoming request.
  *   `requestParams` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters.t`, *default:* `nil`) - Event parameters come in as part of the request.
  *   `responseParams` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters.t`, *default:* `nil`) - Event parameters come out as part of the response.
  *   `snapshotNumber` (*type:* `String.t`, *default:* `nil`) - Workflow snapshot number.
  *   `tenant` (*type:* `String.t`, *default:* `nil`) - Tenant this event is created. Used to reschedule the event to correct tenant.
  *   `triggerId` (*type:* `String.t`, *default:* `nil`) - The trigger id of the workflow trigger config. If both trigger_id and client_id is present, the workflow is executed from the start tasks provided by the matching trigger config otherwise it is executed from the default start tasks.
  *   `workflowId` (*type:* `String.t`, *default:* `nil`) - Required. Pointer to the workflow it is executing.
  *   `workflowName` (*type:* `String.t`, *default:* `nil`) - Name of the workflow.
  *   `workflowRetryBackoffIntervalSeconds` (*type:* `String.t`, *default:* `nil`) - Time interval in seconds to schedule retry of workflow in manifold when workflow is already running
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :createTime => String.t() | nil,
          :errorCode => GoogleApi.Integrations.V1alpha.Model.CrmlogErrorCode.t() | nil,
          :errors =>
            list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoErrorDetail.t())
            | nil,
          :eventExecutionDetails =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails.t()
            | nil,
          :eventExecutionInfoId => String.t() | nil,
          :executionTraceInfo =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo.t()
            | nil,
          :lastModifiedTime => String.t() | nil,
          :postMethod => String.t() | nil,
          :product => String.t() | nil,
          :requestId => String.t() | nil,
          :requestParams =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters.t()
            | nil,
          :responseParams =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters.t()
            | nil,
          :snapshotNumber => String.t() | nil,
          :tenant => String.t() | nil,
          :triggerId => String.t() | nil,
          :workflowId => String.t() | nil,
          :workflowName => String.t() | nil,
          :workflowRetryBackoffIntervalSeconds => String.t() | nil
        }

  field(:clientId)
  field(:createTime)
  field(:errorCode, as: GoogleApi.Integrations.V1alpha.Model.CrmlogErrorCode)

  field(:errors,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoErrorDetail,
    type: :list
  )

  field(:eventExecutionDetails,
    as:
      GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails
  )

  field(:eventExecutionInfoId)

  field(:executionTraceInfo,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo
  )

  field(:lastModifiedTime)
  field(:postMethod)
  field(:product)
  field(:requestId)

  field(:requestParams,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters
  )

  field(:responseParams,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventParameters
  )

  field(:snapshotNumber)
  field(:tenant)
  field(:triggerId)
  field(:workflowId)
  field(:workflowName)
  field(:workflowRetryBackoffIntervalSeconds)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end