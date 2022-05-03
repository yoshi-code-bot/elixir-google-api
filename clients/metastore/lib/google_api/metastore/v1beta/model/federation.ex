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

defmodule GoogleApi.Metastore.V1beta.Model.Federation do
  @moduledoc """
  Represents a federation of multiple backend metastores.

  ## Attributes

  *   `backendMetastores` (*type:* `%{optional(String.t) => GoogleApi.Metastore.V1beta.Model.BackendMetastore.t}`, *default:* `nil`) - A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key is an integer that represents the order in which BackendMetastores should be evaluated to resolve database names at query time. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore federation was created.
  *   `endpointUri` (*type:* `String.t`, *default:* `nil`) - Output only. The federation endpoint.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels for the metastore federation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the federation.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state of the metastore federation, if available.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The globally unique resource identifier of the metastore federation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore federation was last updated.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendMetastores =>
            %{optional(String.t()) => GoogleApi.Metastore.V1beta.Model.BackendMetastore.t()} | nil,
          :createTime => DateTime.t() | nil,
          :endpointUri => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :stateMessage => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :version => String.t() | nil
        }

  field(:backendMetastores, as: GoogleApi.Metastore.V1beta.Model.BackendMetastore, type: :map)
  field(:createTime, as: DateTime)
  field(:endpointUri)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:stateMessage)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.Federation do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.Federation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.Federation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
