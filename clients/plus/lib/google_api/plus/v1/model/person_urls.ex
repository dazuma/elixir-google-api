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

defmodule GoogleApi.Plus.V1.Model.PersonUrls do
  @moduledoc """


  ## Attributes

  - label (String.t): The label of the URL. Defaults to `nil`.
  - type (String.t): The type of URL. Possible values include, but are not limited to, the following values:  
  - "otherProfile" - URL for another profile. 
  - "contributor" - URL to a site for which this person is a contributor. 
  - "website" - URL for this Google+ Page's primary website. 
  - "other" - Other URL. Defaults to `nil`.
  - value (String.t): The URL value. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :label => String.t(),
          :type => String.t(),
          :value => String.t()
        }

  field(:label)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.PersonUrls do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.PersonUrls.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.PersonUrls do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
