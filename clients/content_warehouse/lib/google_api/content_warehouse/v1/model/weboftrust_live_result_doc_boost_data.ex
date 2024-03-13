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

defmodule GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultDocBoostData do
  @moduledoc """
  Page boosting using Live Results data. Attaching this proto to a document indicates that a Live Result feed exists for that document, and that this feed has sufficient reliability to warrant potential boosting of the document rank. Next ID: 3

  ## Attributes

  *   `boostLevel` (*type:* `number()`, *default:* `nil`) - Identifies the degree to which the existence of this LiveResult should boost a query's score (when the query is performed within the hot_times range). This field is always in the range [0,1]. A missing field, a value of 0, or a value outside the legal range indicates that no boosting is performed. A value of 1 indicates that the maximum level of boosting will be applied. This field will be updated from time to time based on CTR and other signals.
  *   `hotTimes` (*type:* `GoogleApi.ContentWarehouse.V1.Model.WeboftrustTimeRange.t`, *default:* `nil`) - Specifies the time range within which this LiveResult is relevant. Used for deciding whether the rank of the corresponding page should be boosted. For example, this range can be set to encompass a few days before and after a sports game to which the page refers. If this field is missing, no boosting is performed. Specifying that a page should always be boosted is not recommended, but can be accomplished by setting hot_times.start_unix_time=0 and hot_time.end_unix_time=0x7fffffff. Note that multiple time ranges can be implemented by adding several LiveResultDocBoostData messages to the LiveResultsDocAttachments proto. If overlapping time ranges are used, the proto containing the highest boost level will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostLevel => number() | nil,
          :hotTimes => GoogleApi.ContentWarehouse.V1.Model.WeboftrustTimeRange.t() | nil
        }

  field(:boostLevel)
  field(:hotTimes, as: GoogleApi.ContentWarehouse.V1.Model.WeboftrustTimeRange)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultDocBoostData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultDocBoostData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultDocBoostData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
