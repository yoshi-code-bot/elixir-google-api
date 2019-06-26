# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Drive.V3.Model.PermissionPermissionDetails do
  @moduledoc """


  ## Attributes

  *   `inherited` (*type:* `boolean()`, *default:* `nil`) - Whether this permission is inherited. This field is always populated. This is an output-only field.
  *   `inheritedFrom` (*type:* `String.t`, *default:* `nil`) - The ID of the item from which this permission is inherited. This is an output-only field and is only populated for members of the shared drive.
  *   `permissionType` (*type:* `String.t`, *default:* `nil`) - The permission type for this user. While new values may be added in future, the following are currently possible:  
      - file 
      - member
  *   `role` (*type:* `String.t`, *default:* `nil`) - The primary role for this user. While new values may be added in the future, the following are currently possible:  
      - organizer 
      - fileOrganizer 
      - writer 
      - commenter 
      - reader
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inherited => boolean(),
          :inheritedFrom => String.t(),
          :permissionType => String.t(),
          :role => String.t()
        }

  field(:inherited)
  field(:inheritedFrom)
  field(:permissionType)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.PermissionPermissionDetails do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.PermissionPermissionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.PermissionPermissionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
