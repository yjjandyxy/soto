//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS MarketplaceEntitlementService service.

AWS Marketplace Entitlement Service This reference provides descriptions of the AWS Marketplace Entitlement Service API. AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to a given product. An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.  Getting Entitlement Records     GetEntitlements- Gets the entitlements for a Marketplace product.  
*/
public struct MarketplaceEntitlementService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MarketplaceEntitlementService client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSMPEntitlementService",
            service: "entitlement.marketplace",
            signingName: "aws-marketplace",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-11",
            endpoint: endpoint,
            possibleErrorTypes: [MarketplaceEntitlementServiceErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.
    public func getEntitlements(_ input: GetEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEntitlementsResult> {
        return client.execute(operation: "GetEntitlements", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
