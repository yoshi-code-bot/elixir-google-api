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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Services_SearchSearchAds360FieldsResponse do
  @moduledoc """
  Response message for SearchAds360FieldService.SearchSearchAds360Fields.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token used to retrieve the next page of results. Pass the content of this string as the `page_token` attribute of the next request. `next_page_token` is not returned for the last page.
  *   `results` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_SearchAds360Field.t)`, *default:* `nil`) - The list of fields that matched the query.
  *   `totalResultsCount` (*type:* `String.t`, *default:* `nil`) - Total number of results that match the query ignoring the LIMIT clause.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :results =>
            list(
              GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_SearchAds360Field.t()
            )
            | nil,
          :totalResultsCount => String.t() | nil
        }

  field(:nextPageToken)

  field(:results,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_SearchAds360Field,
    type: :list
  )

  field(:totalResultsCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Services_SearchSearchAds360FieldsResponse do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Services_SearchSearchAds360FieldsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Services_SearchSearchAds360FieldsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end