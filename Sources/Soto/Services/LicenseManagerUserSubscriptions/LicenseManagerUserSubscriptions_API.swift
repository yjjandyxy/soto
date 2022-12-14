//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS LicenseManagerUserSubscriptions service.
///
/// With License Manager, you can create user-based subscriptions to utilize licensed software with a per user subscription fee on Amazon EC2 instances.
public struct LicenseManagerUserSubscriptions: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LicenseManagerUserSubscriptions client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "licensemanagerusersubscriptions",
            signingName: "license-manager-user-subscriptions",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: LicenseManagerUserSubscriptionsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates the user to an EC2 instance to utilize user-based subscriptions.
    public func associateUser(_ input: AssociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateUserResponse> {
        return self.client.execute(operation: "AssociateUser", path: "/user/AssociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the identity provider from providing user-based subscriptions.
    public func deregisterIdentityProvider(_ input: DeregisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterIdentityProviderResponse> {
        return self.client.execute(operation: "DeregisterIdentityProvider", path: "/identity-provider/DeregisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the user from an EC2 instance providing user-based subscriptions.
    public func disassociateUser(_ input: DisassociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateUserResponse> {
        return self.client.execute(operation: "DisassociateUser", path: "/user/DisassociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the identity providers for user-based subscriptions.
    public func listIdentityProviders(_ input: ListIdentityProvidersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIdentityProvidersResponse> {
        return self.client.execute(operation: "ListIdentityProviders", path: "/identity-provider/ListIdentityProviders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the EC2 instances providing user-based subscriptions.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInstancesResponse> {
        return self.client.execute(operation: "ListInstances", path: "/instance/ListInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the user-based subscription products available from an identity provider.
    public func listProductSubscriptions(_ input: ListProductSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProductSubscriptionsResponse> {
        return self.client.execute(operation: "ListProductSubscriptions", path: "/user/ListProductSubscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists user associations for an identity provider.
    public func listUserAssociations(_ input: ListUserAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserAssociationsResponse> {
        return self.client.execute(operation: "ListUserAssociations", path: "/user/ListUserAssociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers an identity provider for user-based subscriptions.
    public func registerIdentityProvider(_ input: RegisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterIdentityProviderResponse> {
        return self.client.execute(operation: "RegisterIdentityProvider", path: "/identity-provider/RegisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a product subscription for a user with the specified identity provider.
    public func startProductSubscription(_ input: StartProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartProductSubscriptionResponse> {
        return self.client.execute(operation: "StartProductSubscription", path: "/user/StartProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a product subscription for a user with the specified identity provider.
    public func stopProductSubscription(_ input: StopProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopProductSubscriptionResponse> {
        return self.client.execute(operation: "StopProductSubscription", path: "/user/StopProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension LicenseManagerUserSubscriptions {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LicenseManagerUserSubscriptions, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
