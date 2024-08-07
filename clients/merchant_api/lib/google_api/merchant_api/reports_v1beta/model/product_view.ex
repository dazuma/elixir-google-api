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

defmodule GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductView do
  @moduledoc """
  Fields available for query in `product_view` table. Products in the current inventory. Products in this table are the same as in Products sub-API but not all product attributes from Products sub-API are available for query in this table. In contrast to Products sub-API, this table allows to filter the returned list of products by product attributes. To retrieve a single product by `id` or list all products, Products sub-API should be used. Values are only set for fields requested explicitly in the request's search query. 

  ## Attributes

  *   `aggregatedReportingContextStatus` (*type:* `String.t`, *default:* `nil`) - Aggregated status.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - [Availability](https://support.google.com/merchants/answer/6324448) of the product.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the product.
  *   `categoryL1` (*type:* `String.t`, *default:* `nil`) - Product category (1st level) in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL2` (*type:* `String.t`, *default:* `nil`) - Product category (2nd level) in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL3` (*type:* `String.t`, *default:* `nil`) - Product category (3rd level) in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL4` (*type:* `String.t`, *default:* `nil`) - Product category (4th level) in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL5` (*type:* `String.t`, *default:* `nil`) - Product category (5th level) in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `channel` (*type:* `String.t`, *default:* `nil`) - Channel of the product. Can be `ONLINE` or `LOCAL`.
  *   `clickPotential` (*type:* `String.t`, *default:* `nil`) - Estimated performance potential compared to highest performing products of the merchant.
  *   `clickPotentialRank` (*type:* `String.t`, *default:* `nil`) - Rank of the product based on its click potential. A product with `click_potential_rank` 1 has the highest click potential among the merchant's products that fulfill the search query conditions.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - [Condition](https://support.google.com/merchants/answer/6324469) of the product.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the merchant created the product in timestamp seconds.
  *   `expirationDate` (*type:* `GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t`, *default:* `nil`) - Expiration date for the product, specified on insertion.
  *   `feedLabel` (*type:* `String.t`, *default:* `nil`) - Feed label of the product.
  *   `gtin` (*type:* `list(String.t)`, *default:* `nil`) - List of Global Trade Item Numbers (GTINs) of the product.
  *   `id` (*type:* `String.t`, *default:* `nil`) - REST ID of the product, in the form of `channel~languageCode~feedLabel~offerId`. Merchant API methods that operate on products take this as their `name` parameter. Required in the `SELECT` clause.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Item group id provided by the merchant for grouping variants together.
  *   `itemIssues` (*type:* `list(GoogleApi.MerchantAPI.Reports_v1beta.Model.ItemIssue.t)`, *default:* `nil`) - List of item issues for the product. **This field cannot be used for sorting the results.** **Only selected attributes of this field (for example, `item_issues.severity.aggregated_severity`) can be used for filtering the results.**
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code of the product in BCP 47 format.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - Merchant-provided id of the product.
  *   `price` (*type:* `GoogleApi.MerchantAPI.Reports_v1beta.Model.Price.t`, *default:* `nil`) - Product price. Absent if the information about the price of the product is not available.
  *   `productTypeL1` (*type:* `String.t`, *default:* `nil`) - Product type (1st level) in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324406).
  *   `productTypeL2` (*type:* `String.t`, *default:* `nil`) - Product type (2nd level) in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324406).
  *   `productTypeL3` (*type:* `String.t`, *default:* `nil`) - Product type (3rd level) in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324406).
  *   `productTypeL4` (*type:* `String.t`, *default:* `nil`) - Product type (4th level) in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324406).
  *   `productTypeL5` (*type:* `String.t`, *default:* `nil`) - Product type (5th level) in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324406).
  *   `shippingLabel` (*type:* `String.t`, *default:* `nil`) - Normalized [shipping label](https://support.google.com/merchants/answer/6324504) specified in the data source.
  *   `thumbnailLink` (*type:* `String.t`, *default:* `nil`) - Link to the processed image of the product, hosted on the Google infrastructure.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregatedReportingContextStatus => String.t() | nil,
          :availability => String.t() | nil,
          :brand => String.t() | nil,
          :categoryL1 => String.t() | nil,
          :categoryL2 => String.t() | nil,
          :categoryL3 => String.t() | nil,
          :categoryL4 => String.t() | nil,
          :categoryL5 => String.t() | nil,
          :channel => String.t() | nil,
          :clickPotential => String.t() | nil,
          :clickPotentialRank => String.t() | nil,
          :condition => String.t() | nil,
          :creationTime => DateTime.t() | nil,
          :expirationDate => GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t() | nil,
          :feedLabel => String.t() | nil,
          :gtin => list(String.t()) | nil,
          :id => String.t() | nil,
          :itemGroupId => String.t() | nil,
          :itemIssues => list(GoogleApi.MerchantAPI.Reports_v1beta.Model.ItemIssue.t()) | nil,
          :languageCode => String.t() | nil,
          :offerId => String.t() | nil,
          :price => GoogleApi.MerchantAPI.Reports_v1beta.Model.Price.t() | nil,
          :productTypeL1 => String.t() | nil,
          :productTypeL2 => String.t() | nil,
          :productTypeL3 => String.t() | nil,
          :productTypeL4 => String.t() | nil,
          :productTypeL5 => String.t() | nil,
          :shippingLabel => String.t() | nil,
          :thumbnailLink => String.t() | nil,
          :title => String.t() | nil
        }

  field(:aggregatedReportingContextStatus)
  field(:availability)
  field(:brand)
  field(:categoryL1)
  field(:categoryL2)
  field(:categoryL3)
  field(:categoryL4)
  field(:categoryL5)
  field(:channel)
  field(:clickPotential)
  field(:clickPotentialRank)
  field(:condition)
  field(:creationTime, as: DateTime)
  field(:expirationDate, as: GoogleApi.MerchantAPI.Reports_v1beta.Model.Date)
  field(:feedLabel)
  field(:gtin, type: :list)
  field(:id)
  field(:itemGroupId)
  field(:itemIssues, as: GoogleApi.MerchantAPI.Reports_v1beta.Model.ItemIssue, type: :list)
  field(:languageCode)
  field(:offerId)
  field(:price, as: GoogleApi.MerchantAPI.Reports_v1beta.Model.Price)
  field(:productTypeL1)
  field(:productTypeL2)
  field(:productTypeL3)
  field(:productTypeL4)
  field(:productTypeL5)
  field(:shippingLabel)
  field(:thumbnailLink)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductView do
  def decode(value, options) do
    GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.ProductView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
