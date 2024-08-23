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

defmodule GoogleApi.WorkflowExecutions.V1.Model.StepEntry do
  @moduledoc """
  An StepEntry contains debugging information for a step transition in a workflow execution.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time of the step entry.
  *   `entryId` (*type:* `String.t`, *default:* `nil`) - Output only. The numeric ID of this step entry, used for navigation.
  *   `exception` (*type:* `GoogleApi.WorkflowExecutions.V1.Model.Exception.t`, *default:* `nil`) - Output only. The exception thrown by the step entry.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full resource name of the step entry. Each step entry has a unique entry ID, which is a monotonically increasing counter. Step entry names have the format: `projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}/stepEntries/{step_entry}`.
  *   `navigationInfo` (*type:* `GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo.t`, *default:* `nil`) - Output only. The NavigationInfo associated to this step.
  *   `routine` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the routine this step entry belongs to. A routine name is the subworkflow name defined in the YAML source code. The top level routine name is `main`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the step entry.
  *   `step` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the step this step entry belongs to.
  *   `stepEntryMetadata` (*type:* `GoogleApi.WorkflowExecutions.V1.Model.StepEntryMetadata.t`, *default:* `nil`) - Output only. The StepEntryMetadata associated to this step.
  *   `stepType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the step this step entry belongs to.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recently updated time of the step entry.
  *   `variableData` (*type:* `GoogleApi.WorkflowExecutions.V1.Model.VariableData.t`, *default:* `nil`) - Output only. The VariableData associated to this step.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :entryId => String.t() | nil,
          :exception => GoogleApi.WorkflowExecutions.V1.Model.Exception.t() | nil,
          :name => String.t() | nil,
          :navigationInfo => GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo.t() | nil,
          :routine => String.t() | nil,
          :state => String.t() | nil,
          :step => String.t() | nil,
          :stepEntryMetadata => GoogleApi.WorkflowExecutions.V1.Model.StepEntryMetadata.t() | nil,
          :stepType => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :variableData => GoogleApi.WorkflowExecutions.V1.Model.VariableData.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:entryId)
  field(:exception, as: GoogleApi.WorkflowExecutions.V1.Model.Exception)
  field(:name)
  field(:navigationInfo, as: GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo)
  field(:routine)
  field(:state)
  field(:step)
  field(:stepEntryMetadata, as: GoogleApi.WorkflowExecutions.V1.Model.StepEntryMetadata)
  field(:stepType)
  field(:updateTime, as: DateTime)
  field(:variableData, as: GoogleApi.WorkflowExecutions.V1.Model.VariableData)
end

defimpl Poison.Decoder, for: GoogleApi.WorkflowExecutions.V1.Model.StepEntry do
  def decode(value, options) do
    GoogleApi.WorkflowExecutions.V1.Model.StepEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkflowExecutions.V1.Model.StepEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
