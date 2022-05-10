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
extension ACMPCA {
    ///  Lists the private certificate authorities that you created by using the CreateCertificateAuthority action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCertificateAuthoritiesPaginator(
        _ input: ListCertificateAuthoritiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCertificateAuthoritiesRequest, ListCertificateAuthoritiesResponse> {
        return .init(
            input: input,
            command: listCertificateAuthorities,
            inputKey: \ListCertificateAuthoritiesRequest.nextToken,
            outputKey: \ListCertificateAuthoritiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm.amazonaws.com).  These permissions allow ACM to issue and renew ACM certificates that reside in the same Amazon Web Services account as the CA.  Permissions can be granted with the CreatePermission action and revoked with the DeletePermission action.  About Permissions    If the private CA and the certificates it issues reside in the same account, you can use CreatePermission to grant permissions for ACM to carry out automatic certificate renewals.   For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.   If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see Using a Resource Based Policy with ACM Private CA.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionsRequest, ListPermissionsResponse> {
        return .init(
            input: input,
            command: listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the tags, if any, that are associated with your private CA or one that has been shared with you. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the TagCertificateAuthority action to add one or more tags to your CA. Call the UntagCertificateAuthority action to remove tags.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsRequest, ListTagsResponse> {
        return .init(
            input: input,
            command: listTags,
            inputKey: \ListTagsRequest.nextToken,
            outputKey: \ListTagsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
