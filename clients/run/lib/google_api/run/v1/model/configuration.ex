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

defmodule GoogleApi.Run.V1.Model.Configuration do
  @moduledoc """
  Configuration represents the "floating HEAD" of a linear history of Revisions, and optionally how the containers those revisions reference are built. Users create new Revisions by updating the Configuration's spec. The "latest created" revision's name is available under status, as is the "latest ready" revision's name. See also: https://github.com/knative/specs/blob/main/specs/serving/overview.md#configuration

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "serving.knative.dev/v1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource, in this case always "Configuration".
  *   `metadata` (*type:* `GoogleApi.Run.V1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this Configuration, including name, namespace, labels, and annotations.
  *   `spec` (*type:* `GoogleApi.Run.V1.Model.ConfigurationSpec.t`, *default:* `nil`) - Spec holds the desired state of the Configuration (from the client).
  *   `status` (*type:* `GoogleApi.Run.V1.Model.ConfigurationStatus.t`, *default:* `nil`) - Status communicates the observed state of the Configuration (from the controller).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :kind => String.t() | nil,
          :metadata => GoogleApi.Run.V1.Model.ObjectMeta.t() | nil,
          :spec => GoogleApi.Run.V1.Model.ConfigurationSpec.t() | nil,
          :status => GoogleApi.Run.V1.Model.ConfigurationStatus.t() | nil
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.Run.V1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.Run.V1.Model.ConfigurationSpec)
  field(:status, as: GoogleApi.Run.V1.Model.ConfigurationStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Configuration do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Configuration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Configuration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
