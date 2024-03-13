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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostorePoseProto do
  @moduledoc """
  A pose is an object's position in space, as well as its orientation. All fields except lat and lng are optional. All fields are in the WGS-84 ellipsoid, and rotations are right-hand rule (i.e. if the right hand thumb points along a vector, curled fingers indicate positive rotation direction). An un-rotated pose would be pointing due North, along the surface of the ellipsoid. Rotations are applied in the order: yaw, pitch, roll. Note that the rotation axes are rotated along with the model for each rotation step. WARNING: This proto is not meant to be used directly. Please use the provided libraries: //geostore/base/public/pose.h //java/com/google/geostore/base/Pose.java

  ## Attributes

  *   `altitude` (*type:* `float()`, *default:* `nil`) - The height of the pose. A positive height is above the WGS-84 ellipsoid in meters; negative is below.
  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the PoseProto in a list of PoseProtos.
  *   `lat` (*type:* `float()`, *default:* `nil`) - The latitude of the pose in degrees [-90, 90].
  *   `lng` (*type:* `float()`, *default:* `nil`) - The longitude of the pose in degrees (-180,180].
  *   `pitch` (*type:* `float()`, *default:* `nil`) - The rotation around the longitude line East tangent in degrees [-90, 90].
  *   `roll` (*type:* `float()`, *default:* `nil`) - The rotation around the latitude line North tangent in degrees (-180, 180].
  *   `yaw` (*type:* `float()`, *default:* `nil`) - The rotation around the Up vector, from North, in degrees (-180, 180].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altitude => float() | nil,
          :index => integer() | nil,
          :lat => float() | nil,
          :lng => float() | nil,
          :pitch => float() | nil,
          :roll => float() | nil,
          :yaw => float() | nil
        }

  field(:altitude)
  field(:index)
  field(:lat)
  field(:lng)
  field(:pitch)
  field(:roll)
  field(:yaw)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePoseProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostorePoseProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePoseProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end