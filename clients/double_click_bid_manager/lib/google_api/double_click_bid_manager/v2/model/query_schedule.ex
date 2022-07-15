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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.QuerySchedule do
  @moduledoc """
  Information on when and how frequently to run a query.

  ## Attributes

  *   `endDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - Date to periodically run the query until. Not applicable to `ONE_TIME` frequency.
  *   `frequency` (*type:* `String.t`, *default:* `nil`) - How often the query is run.
  *   `nextRunTimezoneCode` (*type:* `String.t`, *default:* `nil`) - Canonical timezone code for report generation time. Defaults to `America/New_York`.
  *   `startDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - When to start running the query. Not applicable to `ONE_TIME` frequency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil,
          :frequency => String.t() | nil,
          :nextRunTimezoneCode => String.t() | nil,
          :startDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil
        }

  field(:endDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
  field(:frequency)
  field(:nextRunTimezoneCode)
  field(:startDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.QuerySchedule do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.QuerySchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.QuerySchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end