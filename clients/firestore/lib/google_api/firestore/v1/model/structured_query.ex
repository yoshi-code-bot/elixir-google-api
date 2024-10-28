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

defmodule GoogleApi.Firestore.V1.Model.StructuredQuery do
  @moduledoc """
  A Firestore query. The query stages are executed in the following order: 1. from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7. find_nearest

  ## Attributes

  *   `endAt` (*type:* `GoogleApi.Firestore.V1.Model.Cursor.t`, *default:* `nil`) - A potential prefix of a position in the result set to end the query at. This is similar to `START_AT` but with it controlling the end position rather than the start position. Requires: * The number of values cannot be greater than the number of fields specified in the `ORDER BY` clause.
  *   `findNearest` (*type:* `GoogleApi.Firestore.V1.Model.FindNearest.t`, *default:* `nil`) - Optional. A potential nearest neighbors search. Applies after all other filters and ordering. Finds the closest vector embeddings to the given query vector.
  *   `from` (*type:* `list(GoogleApi.Firestore.V1.Model.CollectionSelector.t)`, *default:* `nil`) - The collections to query.
  *   `limit` (*type:* `integer()`, *default:* `nil`) - The maximum number of results to return. Applies after all other constraints. Requires: * The value must be greater than or equal to zero if specified.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - The number of documents to skip before returning the first result. This applies after the constraints specified by the `WHERE`, `START AT`, & `END AT` but before the `LIMIT` clause. Requires: * The value must be greater than or equal to zero if specified.
  *   `orderBy` (*type:* `list(GoogleApi.Firestore.V1.Model.Order.t)`, *default:* `nil`) - The order to apply to the query results. Firestore allows callers to provide a full ordering, a partial ordering, or no ordering at all. In all cases, Firestore guarantees a stable ordering through the following rules: * The `order_by` is required to reference all fields used with an inequality filter. * All fields that are required to be in the `order_by` but are not already present are appended in lexicographical ordering of the field name. * If an order on `__name__` is not specified, it is appended by default. Fields are appended with the same sort direction as the last order specified, or 'ASCENDING' if no order was specified. For example: * `ORDER BY a` becomes `ORDER BY a ASC, __name__ ASC` * `ORDER BY a DESC` becomes `ORDER BY a DESC, __name__ DESC` * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__ ASC` * `WHERE __name__ > ... AND a > 1` becomes `WHERE __name__ > ... AND a > 1 ORDER BY a ASC, __name__ ASC`
  *   `select` (*type:* `GoogleApi.Firestore.V1.Model.Projection.t`, *default:* `nil`) - Optional sub-set of the fields to return. This acts as a DocumentMask over the documents returned from a query. When not set, assumes that the caller wants all fields returned.
  *   `startAt` (*type:* `GoogleApi.Firestore.V1.Model.Cursor.t`, *default:* `nil`) - A potential prefix of a position in the result set to start the query at. The ordering of the result set is based on the `ORDER BY` clause of the original query. ``` SELECT * FROM k WHERE a = 1 AND b > 2 ORDER BY b ASC, __name__ ASC; ``` This query's results are ordered by `(b ASC, __name__ ASC)`. Cursors can reference either the full ordering or a prefix of the location, though it cannot reference more fields than what are in the provided `ORDER BY`. Continuing off the example above, attaching the following start cursors will have varying impact: - `START BEFORE (2, /k/123)`: start the query right before `a = 1 AND b > 2 AND __name__ > /k/123`. - `START AFTER (10)`: start the query right after `a = 1 AND b > 10`. Unlike `OFFSET` which requires scanning over the first N results to skip, a start cursor allows the query to begin at a logical position. This position is not required to match an actual result, it will scan forward from this position to find the next document. Requires: * The number of values cannot be greater than the number of fields specified in the `ORDER BY` clause.
  *   `where` (*type:* `GoogleApi.Firestore.V1.Model.Filter.t`, *default:* `nil`) - The filter to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endAt => GoogleApi.Firestore.V1.Model.Cursor.t() | nil,
          :findNearest => GoogleApi.Firestore.V1.Model.FindNearest.t() | nil,
          :from => list(GoogleApi.Firestore.V1.Model.CollectionSelector.t()) | nil,
          :limit => integer() | nil,
          :offset => integer() | nil,
          :orderBy => list(GoogleApi.Firestore.V1.Model.Order.t()) | nil,
          :select => GoogleApi.Firestore.V1.Model.Projection.t() | nil,
          :startAt => GoogleApi.Firestore.V1.Model.Cursor.t() | nil,
          :where => GoogleApi.Firestore.V1.Model.Filter.t() | nil
        }

  field(:endAt, as: GoogleApi.Firestore.V1.Model.Cursor)
  field(:findNearest, as: GoogleApi.Firestore.V1.Model.FindNearest)
  field(:from, as: GoogleApi.Firestore.V1.Model.CollectionSelector, type: :list)
  field(:limit)
  field(:offset)
  field(:orderBy, as: GoogleApi.Firestore.V1.Model.Order, type: :list)
  field(:select, as: GoogleApi.Firestore.V1.Model.Projection)
  field(:startAt, as: GoogleApi.Firestore.V1.Model.Cursor)
  field(:where, as: GoogleApi.Firestore.V1.Model.Filter)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.StructuredQuery do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.StructuredQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.StructuredQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
