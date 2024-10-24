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

defmodule GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  @moduledoc """
  The response for ExecuteBatchDml. Contains a list of ResultSet messages, one for each DML statement that has successfully executed, in the same order as the statements in the request. If a statement fails, the status in the response body identifies the cause of the failure. To check for DML statements that failed, use the following approach: 1. Check the status in the response message. The google.rpc.Code enum value `OK` indicates that all statements were executed successfully. 2. If the status was not `OK`, check the number of result sets in the response. If the response contains `N` ResultSet messages, then statement `N+1` in the request failed. Example 1: * Request: 5 DML statements, all executed successfully. * Response: 5 ResultSet messages, with the status `OK`. Example 2: * Request: 5 DML statements. The third statement has a syntax error. * Response: 2 ResultSet messages, and a syntax error (`INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that the third statement failed, and the fourth and fifth statements were not executed.

  ## Attributes

  *   `resultSets` (*type:* `list(GoogleApi.Spanner.V1.Model.ResultSet.t)`, *default:* `nil`) - One ResultSet for each statement in the request that ran successfully, in the same order as the statements in the request. Each ResultSet does not contain any rows. The ResultSetStats in each ResultSet contain the number of rows modified by the statement. Only the first ResultSet in the response contains valid ResultSetMetadata.
  *   `status` (*type:* `GoogleApi.Spanner.V1.Model.Status.t`, *default:* `nil`) - If all DML statements are executed successfully, the status is `OK`. Otherwise, the error status of the first failed statement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resultSets => list(GoogleApi.Spanner.V1.Model.ResultSet.t()) | nil,
          :status => GoogleApi.Spanner.V1.Model.Status.t() | nil
        }

  field(:resultSets, as: GoogleApi.Spanner.V1.Model.ResultSet, type: :list)
  field(:status, as: GoogleApi.Spanner.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
