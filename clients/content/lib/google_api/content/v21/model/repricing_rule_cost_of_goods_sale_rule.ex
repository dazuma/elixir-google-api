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

defmodule GoogleApi.Content.V21.Model.RepricingRuleCostOfGoodsSaleRule do
  @moduledoc """
  A repricing rule that changes the sale price based on cost of goods sale.

  ## Attributes

  *   `percentageDelta` (*type:* `integer()`, *default:* `nil`) - The percent change against the COGS. Ex: 20 would mean to set the adjusted price 1.2X of the COGS data.
  *   `priceDelta` (*type:* `String.t`, *default:* `nil`) - The price delta against the COGS. E.g. 2 means $2 more of the COGS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :percentageDelta => integer() | nil,
          :priceDelta => String.t() | nil
        }

  field(:percentageDelta)
  field(:priceDelta)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RepricingRuleCostOfGoodsSaleRule do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RepricingRuleCostOfGoodsSaleRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RepricingRuleCostOfGoodsSaleRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
