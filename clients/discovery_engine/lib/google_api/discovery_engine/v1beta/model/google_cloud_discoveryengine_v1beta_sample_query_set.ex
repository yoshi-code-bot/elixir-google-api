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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSampleQuerySet do
  @moduledoc """
  A SampleQuerySet is the parent resource of SampleQuery, and contains the configurations shared by all SampleQuery under it.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the SampleQuerySet was created at.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the SampleQuerySet.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The sample query set display name. This field must be a UTF-8 encoded string with a length limit of 128 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The full resource name of the SampleQuerySet, in the format of `projects/{project}/locations/{location}/sampleQuerySets/{sampleQuerySet}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSampleQuerySet do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSampleQuerySet.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSampleQuerySet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
