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

defmodule GoogleApi.Dataform.V1beta1.Model.WorkflowConfig do
  @moduledoc """
  Represents a Dataform workflow configuration.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of when the WorkflowConfig was created.
  *   `cronSchedule` (*type:* `String.t`, *default:* `nil`) - Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  *   `internalMetadata` (*type:* `String.t`, *default:* `nil`) - Output only. All the metadata information that is used internally to serve the resource. For example: timestamps, flags, status fields, etc. The format of this field is a JSON string.
  *   `invocationConfig` (*type:* `GoogleApi.Dataform.V1beta1.Model.InvocationConfig.t`, *default:* `nil`) - Optional. If left unset, a default InvocationConfig will be used.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The workflow config's name.
  *   `recentScheduledExecutionRecords` (*type:* `list(GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord.t)`, *default:* `nil`) - Output only. Records of the 10 most recent scheduled execution attempts, ordered in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  *   `releaseConfig` (*type:* `String.t`, *default:* `nil`) - Required. The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of when the WorkflowConfig was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :cronSchedule => String.t() | nil,
          :internalMetadata => String.t() | nil,
          :invocationConfig => GoogleApi.Dataform.V1beta1.Model.InvocationConfig.t() | nil,
          :name => String.t() | nil,
          :recentScheduledExecutionRecords =>
            list(GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord.t()) | nil,
          :releaseConfig => String.t() | nil,
          :timeZone => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:cronSchedule)
  field(:internalMetadata)
  field(:invocationConfig, as: GoogleApi.Dataform.V1beta1.Model.InvocationConfig)
  field(:name)

  field(:recentScheduledExecutionRecords,
    as: GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord,
    type: :list
  )

  field(:releaseConfig)
  field(:timeZone)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowConfig do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.WorkflowConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.WorkflowConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
