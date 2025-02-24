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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2Service do
  @moduledoc """
  Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - Output only. The main URI in which this Service is serving traffic.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  *   `traffic` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTarget.t)`, *default:* `nil`) - Optional. Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  *   `customAudiences` (*type:* `list(String.t)`, *default:* `nil`) - One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description of the Service. This field currently has a 512-character limit.
  *   `creator` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the authenticated creator.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `client` (*type:* `String.t`, *default:* `nil`) - Arbitrary identifier for the API client.
  *   `terminalCondition` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t`, *default:* `nil`) - Output only. The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The deletion time. It is only populated as a response to a Delete request.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the time after which it will be permamently deleted.
  *   `scaling` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceScaling.t`, *default:* `nil`) - Optional. Specifies service-level scaling settings
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Optional. The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  *   `ingress` (*type:* `String.t`, *default:* `nil`) - Optional. Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  *   `defaultUriDisabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Disables public resolution of the default URI of this service.
  *   `binaryAuthorization` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization.t`, *default:* `nil`) - Optional. Settings for the Binary Authorization feature.
  *   `latestCreatedRevision` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `conditions` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t)`, *default:* `nil`) - Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `lastModifier` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the last authenticated modifier.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  *   `urls` (*type:* `list(String.t)`, *default:* `nil`) - Output only. All URLs serving traffic for this Service.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  *   `observedGeneration` (*type:* `String.t`, *default:* `nil`) - Output only. The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  *   `clientVersion` (*type:* `String.t`, *default:* `nil`) - Arbitrary version identifier for the API client.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  *   `template` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate.t`, *default:* `nil`) - Required. The template used to create revisions for this Service.
  *   `invokerIamDisabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Disables IAM permission check for run.routes.invoke for callers of this service. This feature is available by invitation only. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  *   `latestReadyRevision` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `trafficStatuses` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTargetStatus.t)`, *default:* `nil`) - Output only. Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :labels => map() | nil,
          :traffic => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTarget.t()) | nil,
          :annotations => map() | nil,
          :name => String.t() | nil,
          :customAudiences => list(String.t()) | nil,
          :description => String.t() | nil,
          :creator => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :client => String.t() | nil,
          :terminalCondition => GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :expireTime => DateTime.t() | nil,
          :scaling => GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceScaling.t() | nil,
          :launchStage => String.t() | nil,
          :ingress => String.t() | nil,
          :defaultUriDisabled => boolean() | nil,
          :binaryAuthorization =>
            GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization.t() | nil,
          :latestCreatedRevision => String.t() | nil,
          :conditions => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t()) | nil,
          :lastModifier => String.t() | nil,
          :reconciling => boolean() | nil,
          :urls => list(String.t()) | nil,
          :generation => String.t() | nil,
          :observedGeneration => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :clientVersion => String.t() | nil,
          :etag => String.t() | nil,
          :template => GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate.t() | nil,
          :invokerIamDisabled => boolean() | nil,
          :latestReadyRevision => String.t() | nil,
          :trafficStatuses =>
            list(GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTargetStatus.t()) | nil
        }

  field(:uri)
  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:traffic, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTarget, type: :list)
  field(:annotations, type: :map)
  field(:name)
  field(:customAudiences, type: :list)
  field(:description)
  field(:creator)
  field(:satisfiesPzs)
  field(:client)
  field(:terminalCondition, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition)
  field(:deleteTime, as: DateTime)
  field(:expireTime, as: DateTime)
  field(:scaling, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceScaling)
  field(:launchStage)
  field(:ingress)
  field(:defaultUriDisabled)
  field(:binaryAuthorization, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2BinaryAuthorization)
  field(:latestCreatedRevision)
  field(:conditions, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition, type: :list)
  field(:lastModifier)
  field(:reconciling)
  field(:urls, type: :list)
  field(:generation)
  field(:observedGeneration)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:clientVersion)
  field(:etag)
  field(:template, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate)
  field(:invokerIamDisabled)
  field(:latestReadyRevision)

  field(:trafficStatuses,
    as: GoogleApi.Run.V2.Model.GoogleCloudRunV2TrafficTargetStatus,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Service do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
