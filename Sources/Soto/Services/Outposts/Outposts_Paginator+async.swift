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

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Outposts {
    ///  Gets the instance types for the specified Outpost.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getOutpostInstanceTypesPaginator(
        _ input: GetOutpostInstanceTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetOutpostInstanceTypesInput, GetOutpostInstanceTypesOutput> {
        return .init(
            input: input,
            command: getOutpostInstanceTypes,
            inputKey: \GetOutpostInstanceTypesInput.nextToken,
            outputKey: \GetOutpostInstanceTypesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists the hardware assets in an Outpost. If you are using Dedicated Hosts on Amazon Web Services Outposts, you can filter your request by host ID to return a list of hardware assets that allocate resources for Dedicated Hosts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssetsPaginator(
        _ input: ListAssetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssetsInput, ListAssetsOutput> {
        return .init(
            input: input,
            command: listAssets,
            inputKey: \ListAssetsInput.nextToken,
            outputKey: \ListAssetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the items in the catalog. Add filters to your request to return a more specific list of results. Use filters to match an item class, storage option, or EC2 family.  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCatalogItemsPaginator(
        _ input: ListCatalogItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutput> {
        return .init(
            input: input,
            command: listCatalogItems,
            inputKey: \ListCatalogItemsInput.nextToken,
            outputKey: \ListCatalogItemsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to return a more specific list of results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrdersPaginator(
        _ input: ListOrdersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrdersInput, ListOrdersOutput> {
        return .init(
            input: input,
            command: listOrders,
            inputKey: \ListOrdersInput.nextToken,
            outputKey: \ListOrdersOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Outposts for your Amazon Web Services account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1).  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOutpostsPaginator(
        _ input: ListOutpostsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOutpostsInput, ListOutpostsOutput> {
        return .init(
            input: input,
            command: listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Outpost sites for your Amazon Web Services account. Add operating address filters to your request to return a more specific list of results. Use filters to match site city, country code, or state/region of the operating address.  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSitesPaginator(
        _ input: ListSitesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSitesInput, ListSitesOutput> {
        return .init(
            input: input,
            command: listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
