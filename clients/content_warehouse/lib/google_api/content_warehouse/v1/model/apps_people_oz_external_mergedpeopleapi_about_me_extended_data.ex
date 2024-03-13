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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedData do
  @moduledoc """
  Extension data for use in AboutMe.

  ## Attributes

  *   `nameDisplayOptions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataNameDisplayOptions.t`, *default:* `nil`) - 
  *   `photosCompareData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataPhotosCompareData.t`, *default:* `nil`) - 
  *   `profileEditability` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileEditability.t`, *default:* `nil`) - 
  *   `profileNameModificationHistory` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileNameModificationHistory.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nameDisplayOptions =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataNameDisplayOptions.t()
            | nil,
          :photosCompareData =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataPhotosCompareData.t()
            | nil,
          :profileEditability =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileEditability.t()
            | nil,
          :profileNameModificationHistory =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileNameModificationHistory.t()
            | nil
        }

  field(:nameDisplayOptions,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataNameDisplayOptions
  )

  field(:photosCompareData,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataPhotosCompareData
  )

  field(:profileEditability,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileEditability
  )

  field(:profileNameModificationHistory,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedDataProfileNameModificationHistory
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAboutMeExtendedData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
