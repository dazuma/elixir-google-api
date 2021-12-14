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

defmodule GoogleApi.PrivateCA.V1.Model.KeyUsage do
  @moduledoc """
  A KeyUsage describes key usage values that may appear in an X.509 certificate.

  ## Attributes

  *   `baseKeyUsage` (*type:* `GoogleApi.PrivateCA.V1.Model.KeyUsageOptions.t`, *default:* `nil`) - Describes high-level ways in which a key may be used.
  *   `extendedKeyUsage` (*type:* `GoogleApi.PrivateCA.V1.Model.ExtendedKeyUsageOptions.t`, *default:* `nil`) - Detailed scenarios in which a key may be used.
  *   `unknownExtendedKeyUsages` (*type:* `list(GoogleApi.PrivateCA.V1.Model.ObjectId.t)`, *default:* `nil`) - Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseKeyUsage => GoogleApi.PrivateCA.V1.Model.KeyUsageOptions.t() | nil,
          :extendedKeyUsage => GoogleApi.PrivateCA.V1.Model.ExtendedKeyUsageOptions.t() | nil,
          :unknownExtendedKeyUsages => list(GoogleApi.PrivateCA.V1.Model.ObjectId.t()) | nil
        }

  field(:baseKeyUsage, as: GoogleApi.PrivateCA.V1.Model.KeyUsageOptions)
  field(:extendedKeyUsage, as: GoogleApi.PrivateCA.V1.Model.ExtendedKeyUsageOptions)
  field(:unknownExtendedKeyUsages, as: GoogleApi.PrivateCA.V1.Model.ObjectId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1.Model.KeyUsage do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1.Model.KeyUsage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1.Model.KeyUsage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end