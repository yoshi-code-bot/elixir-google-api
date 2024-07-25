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

defmodule GoogleApi.AccessContextManager.V1.Model.GcpUserAccessBinding do
  @moduledoc """
  Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.

  ## Attributes

  *   `accessLevels` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  *   `dryRunAccessLevels` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  *   `groupKey` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  *   `restrictedClientApplications` (*type:* `list(GoogleApi.AccessContextManager.V1.Model.Application.t)`, *default:* `nil`) - Optional. A list of applications that are subject to this binding's restrictions. If the list is empty, the binding restrictions will universally apply to all applications.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLevels => list(String.t()) | nil,
          :dryRunAccessLevels => list(String.t()) | nil,
          :groupKey => String.t() | nil,
          :name => String.t() | nil,
          :restrictedClientApplications =>
            list(GoogleApi.AccessContextManager.V1.Model.Application.t()) | nil
        }

  field(:accessLevels, type: :list)
  field(:dryRunAccessLevels, type: :list)
  field(:groupKey)
  field(:name)

  field(:restrictedClientApplications,
    as: GoogleApi.AccessContextManager.V1.Model.Application,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.GcpUserAccessBinding do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.GcpUserAccessBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.GcpUserAccessBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
