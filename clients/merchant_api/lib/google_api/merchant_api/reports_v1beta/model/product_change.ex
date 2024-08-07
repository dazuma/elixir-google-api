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

defmodule GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductChange do
  @moduledoc """
  The change that happened to the product including old value, new value, country code as the region code and reporting context.

  ## Attributes

  *   `newValue` (*type:* `String.t`, *default:* `nil`) - The new value of the changed resource or attribute.
  *   `oldValue` (*type:* `String.t`, *default:* `nil`) - The old value of the changed resource or attribute.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Countries that have the change (if applicable)
  *   `reportingContext` (*type:* `String.t`, *default:* `nil`) - Reporting contexts that have the change (if applicable)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newValue => String.t() | nil,
          :oldValue => String.t() | nil,
          :regionCode => String.t() | nil,
          :reportingContext => String.t() | nil
        }

  field(:newValue)
  field(:oldValue)
  field(:regionCode)
  field(:reportingContext)
end

defimpl Poison.Decoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductChange do
  def decode(value, options) do
    GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
