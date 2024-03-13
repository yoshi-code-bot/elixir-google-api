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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceIdentity do
  @moduledoc """
  The set of information that helps the server identify the surface. This replaces the User-Agent string within the Assistant Server. Note: The SurfaceIdentity proto should only be used to derive the capabilities of a surface. It should not be accessed outside of the CapabilityBuilder or CapabilityChecker. IMPORTANT: The partial migration to the SurfaceIdentity and SurfaceVersion protos defined here is being rolled back (b/303012824). All existing references will be updated to point back to //assistant/api/core_types/surface_identity.proto. If you are adding a reference, use the SurfaceIdentity and SurfaceVersion protos defined there. NEXT ID: 6 LINT.IfChange

  ## Attributes

  *   `deviceId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t`, *default:* `nil`) - The identifier of the device.
  *   `legacySurfaceType` (*type:* `String.t`, *default:* `nil`) - DEPRECATED: The legacy device's surface type enum. NOTE: Prefer using the ontological `surface_type` field above. If you need to access the legacy surface type, please file a bug and add it in your code to migrate to ontological surface type.
  *   `surfaceType` (*type:* `String.t`, *default:* `nil`) - The device's surface type. The types are defined at google3/assistant/api/core_types/surfaces.gcl.
  *   `surfaceVersion` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceVersion.t`, *default:* `nil`) - The version of the surface/client. This is different from the Conversation protocol version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t() | nil,
          :legacySurfaceType => String.t() | nil,
          :surfaceType => String.t() | nil,
          :surfaceVersion =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceVersion.t()
            | nil
        }

  field(:deviceId, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId)
  field(:legacySurfaceType)
  field(:surfaceType)

  field(:surfaceVersion,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceVersion
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceIdentity do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceIdentity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesGovernedSurfaceIdentity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
