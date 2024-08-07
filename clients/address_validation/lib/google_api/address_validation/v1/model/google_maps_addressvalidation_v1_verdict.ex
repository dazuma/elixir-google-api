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

defmodule GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict do
  @moduledoc """
  High level overview of the address validation result and geocode.

  ## Attributes

  *   `addressComplete` (*type:* `boolean()`, *default:* `nil`) - The address is considered complete if there are no unresolved tokens, no unexpected or missing address components. If unset, indicates that the value is `false`. See `missing_component_types`, `unresolved_tokens` or `unexpected` fields for more details.
  *   `geocodeGranularity` (*type:* `String.t`, *default:* `nil`) - Information about the granularity of the `geocode`. This can be understood as the semantic meaning of how coarse or fine the geocoded location is. This can differ from the `validation_granularity` above occasionally. For example, our database might record the existence of an apartment number but do not have a precise location for the apartment within a big apartment complex. In that case, the `validation_granularity` will be `SUB_PREMISE` but the `geocode_granularity` will be `PREMISE`.
  *   `hasInferredComponents` (*type:* `boolean()`, *default:* `nil`) - At least one address component was inferred (added) that wasn't in the input, see [google.maps.addressvalidation.v1.Address.address_components] for details.
  *   `hasReplacedComponents` (*type:* `boolean()`, *default:* `nil`) - At least one address component was replaced, see [google.maps.addressvalidation.v1.Address.address_components] for details.
  *   `hasUnconfirmedComponents` (*type:* `boolean()`, *default:* `nil`) - At least one address component cannot be categorized or validated, see [google.maps.addressvalidation.v1.Address.address_components] for details.
  *   `inputGranularity` (*type:* `String.t`, *default:* `nil`) - The granularity of the **input** address. This is the result of parsing the input address and does not give any validation signals. For validation signals, refer to `validation_granularity` below. For example, if the input address includes a specific apartment number, then the `input_granularity` here will be `SUB_PREMISE`. If we cannot match the apartment number in the databases or the apartment number is invalid, the `validation_granularity` will likely be `PREMISE` or below.
  *   `validationGranularity` (*type:* `String.t`, *default:* `nil`) - The granularity level that the API can fully **validate** the address to. For example, an `validation_granularity` of `PREMISE` indicates all address components at the level of `PREMISE` or more coarse can be validated. Per address component validation result can be found in [google.maps.addressvalidation.v1.Address.address_components].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressComplete => boolean() | nil,
          :geocodeGranularity => String.t() | nil,
          :hasInferredComponents => boolean() | nil,
          :hasReplacedComponents => boolean() | nil,
          :hasUnconfirmedComponents => boolean() | nil,
          :inputGranularity => String.t() | nil,
          :validationGranularity => String.t() | nil
        }

  field(:addressComplete)
  field(:geocodeGranularity)
  field(:hasInferredComponents)
  field(:hasReplacedComponents)
  field(:hasUnconfirmedComponents)
  field(:inputGranularity)
  field(:validationGranularity)
end

defimpl Poison.Decoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict do
  def decode(value, options) do
    GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
