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

defmodule GoogleApi.Calendar.V3.Model.EventWorkingLocationProperties do
  @moduledoc """


  ## Attributes

  *   `customLocation` (*type:* `GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesCustomLocation.t`, *default:* `nil`) - If present, specifies that the user is working from a custom location.
  *   `homeOffice` (*type:* `any()`, *default:* `nil`) - If present, specifies that the user is working at home.
  *   `officeLocation` (*type:* `GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation.t`, *default:* `nil`) - If present, specifies that the user is working from an office.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the working location. Possible values are:  
      - "homeOffice" - The user is working at home. 
      - "officeLocation" - The user is working from an office. 
      - "customLocation" - The user is working from a custom location.  Any details are specified in a sub-field of the specified name, but this field may be missing if empty. Any other fields are ignored.
      Required when adding working location properties.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customLocation =>
            GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesCustomLocation.t() | nil,
          :homeOffice => any() | nil,
          :officeLocation =>
            GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation.t() | nil,
          :type => String.t() | nil
        }

  field(:customLocation,
    as: GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesCustomLocation
  )

  field(:homeOffice)

  field(:officeLocation,
    as: GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation
  )

  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventWorkingLocationProperties do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventWorkingLocationProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventWorkingLocationProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end