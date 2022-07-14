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

defmodule GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo do
  @moduledoc """
  Represents OrgPolicy Violation information.

  ## Attributes

  *   `payload` (*type:* `map()`, *default:* `nil`) - Optional. Resource payload that is currently in scope and is subjected to orgpolicy conditions. This payload may be the subset of the actual Resource that may come in the request. This payload should not contain any core content.
  *   `resourceTags` (*type:* `map()`, *default:* `nil`) - Optional. Tags referenced on the resource at the time of evaluation. These also include the federated tags, if they are supplied in the CheckOrgPolicy or CheckCustomConstraints Requests. Optional field as of now. These tags are the Cloud tags that are available on the resource during the policy evaluation and will be available as part of the OrgPolicy check response for logging purposes.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Optional. Resource type that the orgpolicy is checked against. Example: compute.googleapis.com/Instance, store.googleapis.com/bucket
  *   `violationInfo` (*type:* `list(GoogleApi.ServiceControl.V1.Model.ViolationInfo.t)`, *default:* `nil`) - Optional. Policy violations
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => map() | nil,
          :resourceTags => map() | nil,
          :resourceType => String.t() | nil,
          :violationInfo => list(GoogleApi.ServiceControl.V1.Model.ViolationInfo.t()) | nil
        }

  field(:payload, type: :map)
  field(:resourceTags, type: :map)
  field(:resourceType)
  field(:violationInfo, as: GoogleApi.ServiceControl.V1.Model.ViolationInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
