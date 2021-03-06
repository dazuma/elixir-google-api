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

defmodule GoogleApi.Content.V21.Model.OrderreturnsCreateOrderReturnRequest do
  @moduledoc """


  ## Attributes

  *   `lineItems` (*type:* `list(GoogleApi.Content.V21.Model.OrderreturnsLineItem.t)`, *default:* `nil`) - The list of line items to return.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The ID of the operation. Unique across all operations for a given order.
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - The ID of the order.
  *   `returnMethodType` (*type:* `String.t`, *default:* `nil`) - The way of the package being returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItems => list(GoogleApi.Content.V21.Model.OrderreturnsLineItem.t()) | nil,
          :operationId => String.t() | nil,
          :orderId => String.t() | nil,
          :returnMethodType => String.t() | nil
        }

  field(:lineItems, as: GoogleApi.Content.V21.Model.OrderreturnsLineItem, type: :list)
  field(:operationId)
  field(:orderId)
  field(:returnMethodType)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderreturnsCreateOrderReturnRequest do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderreturnsCreateOrderReturnRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderreturnsCreateOrderReturnRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
