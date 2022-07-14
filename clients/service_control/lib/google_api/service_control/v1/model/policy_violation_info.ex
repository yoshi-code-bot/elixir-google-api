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

defmodule GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo do
  @moduledoc """
  Information related to policy violations for this request.

  ## Attributes

  *   `orgPolicyViolationInfo` (*type:* `GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo.t`, *default:* `nil`) - Indicates the orgpolicy violations for this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :orgPolicyViolationInfo =>
            GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo.t() | nil
        }

  field(:orgPolicyViolationInfo, as: GoogleApi.ServiceControl.V1.Model.OrgPolicyViolationInfo)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
