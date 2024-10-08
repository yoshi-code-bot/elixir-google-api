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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment do
  @moduledoc """
  Policy config assessment.

  ## Attributes

  *   `error` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. If the processing of a policy config fails, an error is populated and the firewall_policy is left empty.
  *   `firewallPolicy` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicy.t`, *default:* `nil`) - Output only. The policy that matched the request. If more than one policy may match, this is the first match. If no policy matches the incoming request, the policy field is left empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.RecaptchaEnterprise.V1.Model.GoogleRpcStatus.t() | nil,
          :firewallPolicy =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicy.t()
            | nil
        }

  field(:error, as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleRpcStatus)

  field(:firewallPolicy,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicy
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
