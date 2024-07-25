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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Constraint do
  @moduledoc """
  A constraint describes a way to restrict resource's configuration. For example, you could enforce a constraint that controls which Google Cloud services can be activated across an organization, or whether a Compute Engine instance can have serial port connections established. Constraints can be configured by the organization policy administrator to fit the needs of the organization by setting a policy that includes constraints at different locations in the organization's resource hierarchy. Policies are inherited down the resource hierarchy from higher levels, but can also be overridden. For details about the inheritance rules please read about `policies`. Constraints have a default behavior determined by the `constraint_default` field, which is the enforcement behavior that is used in the absence of a policy being defined or inherited for the resource in question.

  ## Attributes

  *   `booleanConstraint` (*type:* `GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint.t`, *default:* `nil`) - Defines this constraint as being a BooleanConstraint.
  *   `constraintDefault` (*type:* `String.t`, *default:* `nil`) - The evaluation behavior of this constraint in the absence of a policy.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Detailed description of what this constraint controls as well as how and where it is enforced. Mutable.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human readable name. Mutable.
  *   `listConstraint` (*type:* `GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint.t`, *default:* `nil`) - Defines this constraint as being a ListConstraint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the constraint. Must be in one of the following forms: * `projects/{project_number}/constraints/{constraint_name}` * `folders/{folder_id}/constraints/{constraint_name}` * `organizations/{organization_id}/constraints/{constraint_name}` For example, "/projects/123/constraints/compute.disableSerialPortAccess".
  *   `supportsDryRun` (*type:* `boolean()`, *default:* `nil`) - Shows if dry run is supported for this constraint or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanConstraint =>
            GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint.t()
            | nil,
          :constraintDefault => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :listConstraint =>
            GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint.t() | nil,
          :name => String.t() | nil,
          :supportsDryRun => boolean() | nil
        }

  field(:booleanConstraint,
    as: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
  )

  field(:constraintDefault)
  field(:description)
  field(:displayName)

  field(:listConstraint,
    as: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint
  )

  field(:name)
  field(:supportsDryRun)
end

defimpl Poison.Decoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Constraint do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Constraint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Constraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
