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
extension WorkLink {
    ///  Retrieves a list of devices registered with the specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevicesRequest, ListDevicesResponse> {
        return .init(
            input: input,
            command: listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of domains associated to a specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of fleets for the current account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listFleetsPaginator(
        _ input: ListFleetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFleetsRequest, ListFleetsResponse> {
        return .init(
            input: input,
            command: listFleets,
            inputKey: \ListFleetsRequest.nextToken,
            outputKey: \ListFleetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of website authorization providers associated with a specified fleet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteAuthorizationProvidersPaginator(
        _ input: ListWebsiteAuthorizationProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWebsiteAuthorizationProvidersRequest, ListWebsiteAuthorizationProvidersResponse> {
        return .init(
            input: input,
            command: listWebsiteAuthorizationProviders,
            inputKey: \ListWebsiteAuthorizationProvidersRequest.nextToken,
            outputKey: \ListWebsiteAuthorizationProvidersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of certificate authorities added for the current account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteCertificateAuthoritiesPaginator(
        _ input: ListWebsiteCertificateAuthoritiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWebsiteCertificateAuthoritiesRequest, ListWebsiteCertificateAuthoritiesResponse> {
        return .init(
            input: input,
            command: listWebsiteCertificateAuthorities,
            inputKey: \ListWebsiteCertificateAuthoritiesRequest.nextToken,
            outputKey: \ListWebsiteCertificateAuthoritiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
