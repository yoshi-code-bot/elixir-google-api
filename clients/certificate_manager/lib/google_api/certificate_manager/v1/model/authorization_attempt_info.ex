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

defmodule GoogleApi.CertificateManager.V1.Model.AuthorizationAttemptInfo do
  @moduledoc """
  State of the latest attempt to authorize a domain for certificate issuance.

  ## Attributes

  *   `details` (*type:* `String.t`, *default:* `nil`) - Output only. Human readable explanation for reaching the state. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use FailureReason enum.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Output only. Domain name of the authorization attempt.
  *   `failureReason` (*type:* `String.t`, *default:* `nil`) - Output only. Reason for failure of the authorization attempt for the domain.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the domain for managed certificate issuance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => String.t() | nil,
          :domain => String.t() | nil,
          :failureReason => String.t() | nil,
          :state => String.t() | nil
        }

  field(:details)
  field(:domain)
  field(:failureReason)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.AuthorizationAttemptInfo do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.AuthorizationAttemptInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.AuthorizationAttemptInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
