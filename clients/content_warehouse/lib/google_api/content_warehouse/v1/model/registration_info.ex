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

defmodule GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo do
  @moduledoc """
  Domain registration information for the document. NEXT ID TO USE: 3

  ## Attributes

  *   `createdDate` (*type:* `integer()`, *default:* `nil`) - This is the number of days since January 1st 1995 that this domain was last created. This should always fit in 15 bits.
  *   `expiredDate` (*type:* `integer()`, *default:* `nil`) - This is the number of days since January 1st 1995 that this domain last expired. This should always fit in 15 bits. Jan 1st 1995 was chosen by the history project as a special epoch date. Both the registrationinfo dates and the linkage dates are measured in days since this epoch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdDate => integer() | nil,
          :expiredDate => integer() | nil
        }

  field(:createdDate)
  field(:expiredDate)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
