# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductPermission do
  @moduledoc """
  A product permissions resource represents the set of permissions required by a specific app and whether or not they have been accepted by an enterprise admin.

  The API can be used to read the set of permissions, and also to update the set to indicate that permissions have been accepted.

  ## Attributes

  - permissionId (String.t): An opaque string uniquely identifying the permission. Defaults to `nil`.
  - state (String.t): Whether the permission has been accepted or not. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissionId => String.t(),
          :state => String.t()
        }

  field(:permissionId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPermission do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductPermission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPermission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
