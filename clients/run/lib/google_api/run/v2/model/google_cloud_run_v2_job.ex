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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2Job do
  @moduledoc """
  Job represents the configuration of a single job, which references a container image that is run to completion.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  *   `binaryAuthorization` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization.t`, *default:* `nil`) - Settings for the Binary Authorization feature.
  *   `client` (*type:* `String.t`, *default:* `nil`) - Arbitrary identifier for the API client.
  *   `clientVersion` (*type:* `String.t`, *default:* `nil`) - Arbitrary version identifier for the API client.
  *   `conditions` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t)`, *default:* `nil`) - Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `creator` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the authenticated creator.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The deletion time.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  *   `executionCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of executions created for this job.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the time after which it will be permamently deleted.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Output only. A number that monotonically increases every time the user modifies the desired state.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  *   `lastModifier` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the last authenticated modifier.
  *   `latestCreatedExecution` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionReference.t`, *default:* `nil`) - Output only. Name of the last created execution.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  *   `observedGeneration` (*type:* `String.t`, *default:* `nil`) - Output only. The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `template` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate.t`, *default:* `nil`) - Required. The template used to create executions for this Job.
  *   `terminalCondition` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t`, *default:* `nil`) - Output only. The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :binaryAuthorization =>
            GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization.t() | nil,
          :client => String.t() | nil,
          :clientVersion => String.t() | nil,
          :conditions => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t()) | nil,
          :createTime => DateTime.t() | nil,
          :creator => String.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :executionCount => integer() | nil,
          :expireTime => DateTime.t() | nil,
          :generation => String.t() | nil,
          :labels => map() | nil,
          :lastModifier => String.t() | nil,
          :latestCreatedExecution =>
            GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionReference.t() | nil,
          :launchStage => String.t() | nil,
          :name => String.t() | nil,
          :observedGeneration => String.t() | nil,
          :reconciling => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :template => GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate.t() | nil,
          :terminalCondition => GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:binaryAuthorization, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization)
  field(:client)
  field(:clientVersion)
  field(:conditions, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition, type: :list)
  field(:createTime, as: DateTime)
  field(:creator)
  field(:deleteTime, as: DateTime)
  field(:etag)
  field(:executionCount)
  field(:expireTime, as: DateTime)
  field(:generation)
  field(:labels, type: :map)
  field(:lastModifier)
  field(:latestCreatedExecution, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionReference)
  field(:launchStage)
  field(:name)
  field(:observedGeneration)
  field(:reconciling)
  field(:satisfiesPzs)
  field(:template, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate)
  field(:terminalCondition, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Job do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
