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

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension NetworkManager {
    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGlobalNetworksPaginator(
        _ input: DescribeGlobalNetworksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGlobalNetworksRequest, DescribeGlobalNetworksResponse> {
        return .init(
            input: input,
            command: describeGlobalNetworks,
            inputKey: \DescribeGlobalNetworksRequest.nextToken,
            outputKey: \DescribeGlobalNetworksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your connections in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectionsPaginator(
        _ input: GetConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectionsRequest, GetConnectionsResponse> {
        return .init(
            input: input,
            command: getConnections,
            inputKey: \GetConnectionsRequest.nextToken,
            outputKey: \GetConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCustomerGatewayAssociationsPaginator(
        _ input: GetCustomerGatewayAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCustomerGatewayAssociationsRequest, GetCustomerGatewayAssociationsResponse> {
        return .init(
            input: input,
            command: getCustomerGatewayAssociations,
            inputKey: \GetCustomerGatewayAssociationsRequest.nextToken,
            outputKey: \GetCustomerGatewayAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your devices in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDevicesPaginator(
        _ input: GetDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDevicesRequest, GetDevicesResponse> {
        return .init(
            input: input,
            command: getDevices,
            inputKey: \GetDevicesRequest.nextToken,
            outputKey: \GetDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLinkAssociationsPaginator(
        _ input: GetLinkAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLinkAssociationsRequest, GetLinkAssociationsResponse> {
        return .init(
            input: input,
            command: getLinkAssociations,
            inputKey: \GetLinkAssociationsRequest.nextToken,
            outputKey: \GetLinkAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLinksPaginator(
        _ input: GetLinksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLinksRequest, GetLinksResponse> {
        return .init(
            input: input,
            command: getLinks,
            inputKey: \GetLinksRequest.nextToken,
            outputKey: \GetLinksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your sites in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSitesPaginator(
        _ input: GetSitesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSitesRequest, GetSitesResponse> {
        return .init(
            input: input,
            command: getSites,
            inputKey: \GetSitesRequest.nextToken,
            outputKey: \GetSitesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your transit gateway Connect peer associations in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTransitGatewayConnectPeerAssociationsPaginator(
        _ input: GetTransitGatewayConnectPeerAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTransitGatewayConnectPeerAssociationsRequest, GetTransitGatewayConnectPeerAssociationsResponse> {
        return .init(
            input: input,
            command: getTransitGatewayConnectPeerAssociations,
            inputKey: \GetTransitGatewayConnectPeerAssociationsRequest.nextToken,
            outputKey: \GetTransitGatewayConnectPeerAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTransitGatewayRegistrationsPaginator(
        _ input: GetTransitGatewayRegistrationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTransitGatewayRegistrationsRequest, GetTransitGatewayRegistrationsResponse> {
        return .init(
            input: input,
            command: getTransitGatewayRegistrations,
            inputKey: \GetTransitGatewayRegistrationsRequest.nextToken,
            outputKey: \GetTransitGatewayRegistrationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)