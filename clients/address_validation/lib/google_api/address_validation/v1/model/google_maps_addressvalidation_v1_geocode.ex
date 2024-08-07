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

defmodule GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode do
  @moduledoc """
  Contains information about the place the input was geocoded to.

  ## Attributes

  *   `bounds` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleGeoTypeViewport.t`, *default:* `nil`) - The bounds of the geocoded place.
  *   `featureSizeMeters` (*type:* `number()`, *default:* `nil`) - The size of the geocoded place, in meters. This is another measure of the coarseness of the geocoded location, but in physical size rather than in semantic meaning.
  *   `location` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleTypeLatLng.t`, *default:* `nil`) - The geocoded location of the input. Using place IDs is preferred over using addresses, latitude/longitude coordinates, or plus codes. Using coordinates when routing or calculating driving directions will always result in the point being snapped to the road nearest to those coordinates. This may not be a road that will quickly or safely lead to the destination and may not be near an access point to the property. Additionally, when a location is reverse geocoded, there is no guarantee that the returned address will match the original.
  *   `placeId` (*type:* `String.t`, *default:* `nil`) - The PlaceID of the place this input geocodes to. For more information about Place IDs see [here](https://developers.google.com/maps/documentation/places/web-service/place-id).
  *   `placeTypes` (*type:* `list(String.t)`, *default:* `nil`) - The type(s) of place that the input geocoded to. For example, `['locality', 'political']`. The full list of types can be found [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  *   `plusCode` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1PlusCode.t`, *default:* `nil`) - The plus code corresponding to the `location`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bounds => GoogleApi.AddressValidation.V1.Model.GoogleGeoTypeViewport.t() | nil,
          :featureSizeMeters => number() | nil,
          :location => GoogleApi.AddressValidation.V1.Model.GoogleTypeLatLng.t() | nil,
          :placeId => String.t() | nil,
          :placeTypes => list(String.t()) | nil,
          :plusCode =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1PlusCode.t() | nil
        }

  field(:bounds, as: GoogleApi.AddressValidation.V1.Model.GoogleGeoTypeViewport)
  field(:featureSizeMeters)
  field(:location, as: GoogleApi.AddressValidation.V1.Model.GoogleTypeLatLng)
  field(:placeId)
  field(:placeTypes, type: :list)
  field(:plusCode, as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1PlusCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode do
  def decode(value, options) do
    GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
