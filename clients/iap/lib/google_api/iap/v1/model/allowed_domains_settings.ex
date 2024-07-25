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

defmodule GoogleApi.IAP.V1.Model.AllowedDomainsSettings do
  @moduledoc """
  Configuration for IAP allowed domains. Lets you to restrict access to an app and allow access to only the domains that you list.

  ## Attributes

  *   `domains` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of trusted domains.
  *   `enable` (*type:* `boolean()`, *default:* `nil`) - Optional. Configuration for customers to opt in for the feature.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domains => list(String.t()) | nil,
          :enable => boolean() | nil
        }

  field(:domains, type: :list)
  field(:enable)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.AllowedDomainsSettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.AllowedDomainsSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.AllowedDomainsSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
