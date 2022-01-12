//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Outposts {
    // MARK: Async API Calls

    ///  Cancels an order for an Outpost.
    public func cancelOrder(_ input: CancelOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelOrderOutput {
        return try await self.client.execute(operation: "CancelOrder", path: "/orders/{OrderId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an order for an Outpost.
    public func createOrder(_ input: CreateOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderOutput {
        return try await self.client.execute(operation: "CreateOrder", path: "/orders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.
    public func createOutpost(_ input: CreateOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOutpostOutput {
        return try await self.client.execute(operation: "CreateOutpost", path: "/outposts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a site for an Outpost.
    public func createSite(_ input: CreateSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSiteOutput {
        return try await self.client.execute(operation: "CreateSite", path: "/sites", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the Outpost.
    public func deleteOutpost(_ input: DeleteOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOutpostOutput {
        return try await self.client.execute(operation: "DeleteOutpost", path: "/outposts/{OutpostId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the site.
    public func deleteSite(_ input: DeleteSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSiteOutput {
        return try await self.client.execute(operation: "DeleteSite", path: "/sites/{SiteId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a catalog item.
    public func getCatalogItem(_ input: GetCatalogItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCatalogItemOutput {
        return try await self.client.execute(operation: "GetCatalogItem", path: "/catalog/item/{CatalogItemId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an order.
    public func getOrder(_ input: GetOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOrderOutput {
        return try await self.client.execute(operation: "GetOrder", path: "/orders/{OrderId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified Outpost.
    public func getOutpost(_ input: GetOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOutpostOutput {
        return try await self.client.execute(operation: "GetOutpost", path: "/outposts/{OutpostId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the instance types for the specified Outpost.
    public func getOutpostInstanceTypes(_ input: GetOutpostInstanceTypesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOutpostInstanceTypesOutput {
        return try await self.client.execute(operation: "GetOutpostInstanceTypes", path: "/outposts/{OutpostId}/instanceTypes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets information about the specified Outpost site.
    public func getSite(_ input: GetSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSiteOutput {
        return try await self.client.execute(operation: "GetSite", path: "/sites/{SiteId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets the site address.
    public func getSiteAddress(_ input: GetSiteAddressInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSiteAddressOutput {
        return try await self.client.execute(operation: "GetSiteAddress", path: "/sites/{SiteId}/address", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use to create a list of every item in the catalog. Add filters to your request to return a more specific list of results. Use filters to match an item class, storage option, or EC2 family.  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    public func listCatalogItems(_ input: ListCatalogItemsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCatalogItemsOutput {
        return try await self.client.execute(operation: "ListCatalogItems", path: "/catalog/items", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a list of the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to return a more specific list of results.
    public func listOrders(_ input: ListOrdersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrdersOutput {
        return try await self.client.execute(operation: "ListOrders", path: "/list-orders", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a list of the Outposts for your Amazon Web Services account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1).  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    public func listOutposts(_ input: ListOutpostsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOutpostsOutput {
        return try await self.client.execute(operation: "ListOutposts", path: "/outposts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the sites for your Amazon Web Services account.
    public func listSites(_ input: ListSitesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSitesOutput {
        return try await self.client.execute(operation: "ListSites", path: "/sites", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an Outpost.
    public func updateOutpost(_ input: UpdateOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOutpostOutput {
        return try await self.client.execute(operation: "UpdateOutpost", path: "/outposts/{OutpostId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the site.
    public func updateSite(_ input: UpdateSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSiteOutput {
        return try await self.client.execute(operation: "UpdateSite", path: "/sites/{SiteId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the site address.   To update a site address with an order IN_PROGRESS, you must wait for the order to complete or cancel the order.  You can update the operating address before you place an order at the site, or after all Outposts that belong to the site have been deactivated.
    public func updateSiteAddress(_ input: UpdateSiteAddressInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSiteAddressOutput {
        return try await self.client.execute(operation: "UpdateSiteAddress", path: "/sites/{SiteId}/address", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the physical and logistical details for a rack at a site. For more information about hardware requirements for racks, see Network readiness checklist in the Amazon Web Services Outposts User Guide.  To update a rack at a site with an order of IN_PROGRESS, you must wait for the order to complete or cancel the order.
    public func updateSiteRackPhysicalProperties(_ input: UpdateSiteRackPhysicalPropertiesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSiteRackPhysicalPropertiesOutput {
        return try await self.client.execute(operation: "UpdateSiteRackPhysicalProperties", path: "/sites/{SiteId}/rackPhysicalProperties", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
