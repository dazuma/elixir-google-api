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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification do
  @moduledoc """
  Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. BusinessAvailabilityAttributes justifications. This shows some attributes a business has that could interest an end user.

  ## Attributes

  *   `delivery` (*type:* `boolean()`, *default:* `nil`) - If a place provides delivery.
  *   `dineIn` (*type:* `boolean()`, *default:* `nil`) - If a place provides dine-in.
  *   `takeout` (*type:* `boolean()`, *default:* `nil`) - If a place provides takeout.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delivery => boolean() | nil,
          :dineIn => boolean() | nil,
          :takeout => boolean() | nil
        }

  field(:delivery)
  field(:dineIn)
  field(:takeout)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
