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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ProvisionProjectRequest do
  @moduledoc """
  Request for ProjectService.ProvisionProject method.

  ## Attributes

  *   `acceptDataUseTerms` (*type:* `boolean()`, *default:* `nil`) - Required. Set to `true` to specify that caller has read and would like to give consent to the [Terms for data use](https://cloud.google.com/retail/data-use-terms).
  *   `dataUseTermsVersion` (*type:* `String.t`, *default:* `nil`) - Required. The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms) that caller has read and would like to give consent to. Acceptable version is `2022-11-23`, and this may change over time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceptDataUseTerms => boolean() | nil,
          :dataUseTermsVersion => String.t() | nil
        }

  field(:acceptDataUseTerms)
  field(:dataUseTermsVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ProvisionProjectRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ProvisionProjectRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ProvisionProjectRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
