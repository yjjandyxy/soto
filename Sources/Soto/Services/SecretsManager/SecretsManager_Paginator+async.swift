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
extension SecretsManager {
    ///  Lists all of the versions attached to the specified secret. The output does not include the SecretString or SecretBinary fields. By default, the list includes only versions that have at least one staging label in VersionStage attached.  Always check the NextToken response parameter when calling any of the List* operations. These operations can occasionally return an empty or shorter than expected list of results even when there more results become available. When this happens, the NextToken response parameter contains a value to pass to the next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecretVersionIds    Related operations    To list the secrets in an account, use ListSecrets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecretVersionIdsPaginator(
        _ input: ListSecretVersionIdsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecretVersionIdsRequest, ListSecretVersionIdsResponse> {
        return .init(
            input: input,
            command: listSecretVersionIds,
            inputKey: \ListSecretVersionIdsRequest.nextToken,
            outputKey: \ListSecretVersionIdsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all of the secrets that are stored by Secrets Manager in the Amazon Web Services account. To list the versions currently stored for a specific secret, use ListSecretVersionIds. The encrypted fields SecretString and SecretBinary are not included in the output. To get that information, call the GetSecretValue operation.  Always check the NextToken response parameter when calling any of the List* operations. These operations can occasionally return an empty or shorter than expected list of results even when there more results become available. When this happens, the NextToken response parameter contains a value to pass to the next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecrets    Related operations    To list the versions attached to a secret, use ListSecretVersionIds.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecretsPaginator(
        _ input: ListSecretsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecretsRequest, ListSecretsResponse> {
        return .init(
            input: input,
            command: listSecrets,
            inputKey: \ListSecretsRequest.nextToken,
            outputKey: \ListSecretsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)