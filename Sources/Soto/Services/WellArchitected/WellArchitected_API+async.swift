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
extension WellArchitected {
    // MARK: Async API Calls

    /// Associate a lens to a workload. Up to 10 lenses can be associated with a workload in a single API operation. A maximum of 20 lenses can be associated with a workload.   Disclaimer  By accessing and/or applying custom lenses created by another Amazon Web Services user or account, you acknowledge that custom lenses created by other users and shared with you are Third Party Content as defined in the Amazon Web Services Customer Agreement.
    public func associateLenses(_ input: AssociateLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AssociateLenses", path: "/workloads/{WorkloadId}/associateLenses", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a lens share. The owner of a lens can share it with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Shared access to a lens is not removed until the lens invitation is deleted.   Disclaimer  By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    public func createLensShare(_ input: CreateLensShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLensShareOutput {
        return try await self.client.execute(operation: "CreateLensShare", path: "/lenses/{LensAlias}/shares", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new lens version. A lens can have up to 100 versions. After a lens has been imported, create a new lens version to publish it. The owner of a lens can share the lens with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Only the owner of a lens can delete it.
    public func createLensVersion(_ input: CreateLensVersionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLensVersionOutput {
        return try await self.client.execute(operation: "CreateLensVersion", path: "/lenses/{LensAlias}/versions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a milestone for an existing workload.
    public func createMilestone(_ input: CreateMilestoneInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMilestoneOutput {
        return try await self.client.execute(operation: "CreateMilestone", path: "/workloads/{WorkloadId}/milestones", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new workload. The owner of a workload can share the workload with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Only the owner of a workload can delete it. For more information, see Defining a Workload in the Well-Architected Tool User Guide.
    public func createWorkload(_ input: CreateWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkloadOutput {
        return try await self.client.execute(operation: "CreateWorkload", path: "/workloads", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a workload share. The owner of a workload can share it with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Shared access to a workload is not removed until the workload invitation is deleted. For more information, see Sharing a Workload in the Well-Architected Tool User Guide.
    public func createWorkloadShare(_ input: CreateWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkloadShareOutput {
        return try await self.client.execute(operation: "CreateWorkloadShare", path: "/workloads/{WorkloadId}/shares", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an existing lens. Only the owner of a lens can delete it. After the lens is deleted, Amazon Web Services accounts and IAM users that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.    Disclaimer  By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    public func deleteLens(_ input: DeleteLensInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLens", path: "/lenses/{LensAlias}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a lens share. After the lens share is deleted, Amazon Web Services accounts and IAM users that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.   Disclaimer  By sharing your custom lenses with other Amazon Web Services accounts, you acknowledge that Amazon Web Services will make your custom lenses available to those other accounts. Those other accounts may continue to access and use your shared custom lenses even if you delete the custom lenses from your own Amazon Web Services account or terminate your Amazon Web Services account.
    public func deleteLensShare(_ input: DeleteLensShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLensShare", path: "/lenses/{LensAlias}/shares/{ShareId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an existing workload.
    public func deleteWorkload(_ input: DeleteWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteWorkload", path: "/workloads/{WorkloadId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a workload share.
    public func deleteWorkloadShare(_ input: DeleteWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteWorkloadShare", path: "/workloads/{WorkloadId}/shares/{ShareId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate a lens from a workload. Up to 10 lenses can be disassociated from a workload in a single API operation.  The Amazon Web Services Well-Architected Framework lens (wellarchitected) cannot be removed from a workload.
    public func disassociateLenses(_ input: DisassociateLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateLenses", path: "/workloads/{WorkloadId}/disassociateLenses", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Export an existing lens. Lenses are defined in JSON. For more information, see JSON format specification in the Well-Architected Tool User Guide. Only the owner of a lens can export it.    Disclaimer  Do not include or gather personal identifiable information (PII) of end users or other identifiable individuals in or via your custom lenses. If your custom lens or those shared with you and used in your account do include or collect PII you are responsible for: ensuring that the included PII is processed in accordance with applicable law, providing adequate privacy notices, and obtaining necessary consents for processing such data.
    public func exportLens(_ input: ExportLensInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportLensOutput {
        return try await self.client.execute(operation: "ExportLens", path: "/lenses/{LensAlias}/export", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the answer to a specific question in a workload review.
    public func getAnswer(_ input: GetAnswerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAnswerOutput {
        return try await self.client.execute(operation: "GetAnswer", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get an existing lens.
    public func getLens(_ input: GetLensInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLensOutput {
        return try await self.client.execute(operation: "GetLens", path: "/lenses/{LensAlias}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens review.
    public func getLensReview(_ input: GetLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLensReviewOutput {
        return try await self.client.execute(operation: "GetLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens review report.
    public func getLensReviewReport(_ input: GetLensReviewReportInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLensReviewReportOutput {
        return try await self.client.execute(operation: "GetLensReviewReport", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens version differences.
    public func getLensVersionDifference(_ input: GetLensVersionDifferenceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLensVersionDifferenceOutput {
        return try await self.client.execute(operation: "GetLensVersionDifference", path: "/lenses/{LensAlias}/versionDifference", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a milestone for an existing workload.
    public func getMilestone(_ input: GetMilestoneInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMilestoneOutput {
        return try await self.client.execute(operation: "GetMilestone", path: "/workloads/{WorkloadId}/milestones/{MilestoneNumber}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get an existing workload.
    public func getWorkload(_ input: GetWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkloadOutput {
        return try await self.client.execute(operation: "GetWorkload", path: "/workloads/{WorkloadId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Import a new lens. The lens cannot be applied to workloads or shared with other Amazon Web Services accounts until it's published with CreateLensVersion  Lenses are defined in JSON. For more information, see JSON format specification in the Well-Architected Tool User Guide. A custom lens cannot exceed 500 KB in size.   Disclaimer  Do not include or gather personal identifiable information (PII) of end users or other identifiable individuals in or via your custom lenses. If your custom lens or those shared with you and used in your account do include or collect PII you are responsible for: ensuring that the included PII is processed in accordance with applicable law, providing adequate privacy notices, and obtaining necessary consents for processing such data.
    public func importLens(_ input: ImportLensInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportLensOutput {
        return try await self.client.execute(operation: "ImportLens", path: "/importLens", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List of answers.
    public func listAnswers(_ input: ListAnswersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnswersOutput {
        return try await self.client.execute(operation: "ListAnswers", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens review improvements.
    public func listLensReviewImprovements(_ input: ListLensReviewImprovementsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLensReviewImprovementsOutput {
        return try await self.client.execute(operation: "ListLensReviewImprovements", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens reviews.
    public func listLensReviews(_ input: ListLensReviewsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLensReviewsOutput {
        return try await self.client.execute(operation: "ListLensReviews", path: "/workloads/{WorkloadId}/lensReviews", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the lens shares associated with the lens.
    public func listLensShares(_ input: ListLensSharesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLensSharesOutput {
        return try await self.client.execute(operation: "ListLensShares", path: "/lenses/{LensAlias}/shares", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the available lenses.
    public func listLenses(_ input: ListLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLensesOutput {
        return try await self.client.execute(operation: "ListLenses", path: "/lenses", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all milestones for an existing workload.
    public func listMilestones(_ input: ListMilestonesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMilestonesOutput {
        return try await self.client.execute(operation: "ListMilestones", path: "/workloads/{WorkloadId}/milestonesSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens notifications.
    public func listNotifications(_ input: ListNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNotificationsOutput {
        return try await self.client.execute(operation: "ListNotifications", path: "/notifications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the workload invitations.
    public func listShareInvitations(_ input: ListShareInvitationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListShareInvitationsOutput {
        return try await self.client.execute(operation: "ListShareInvitations", path: "/shareInvitations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{WorkloadArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the workload shares associated with the workload.
    public func listWorkloadShares(_ input: ListWorkloadSharesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkloadSharesOutput {
        return try await self.client.execute(operation: "ListWorkloadShares", path: "/workloads/{WorkloadId}/shares", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List workloads. Paginated.
    public func listWorkloads(_ input: ListWorkloadsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkloadsOutput {
        return try await self.client.execute(operation: "ListWorkloads", path: "/workloadsSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to the specified resource.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{WorkloadArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes specified tags from a resource. To specify multiple tags, use separate tagKeys parameters, for example:  DELETE /tags/WorkloadArn?tagKeys=key1&amp;tagKeys=key2
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{WorkloadArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the answer to a specific question in a workload review.
    public func updateAnswer(_ input: UpdateAnswerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAnswerOutput {
        return try await self.client.execute(operation: "UpdateAnswer", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update lens review.
    public func updateLensReview(_ input: UpdateLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLensReviewOutput {
        return try await self.client.execute(operation: "UpdateLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a workload invitation.
    public func updateShareInvitation(_ input: UpdateShareInvitationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateShareInvitationOutput {
        return try await self.client.execute(operation: "UpdateShareInvitation", path: "/shareInvitations/{ShareInvitationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an existing workload.
    public func updateWorkload(_ input: UpdateWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkloadOutput {
        return try await self.client.execute(operation: "UpdateWorkload", path: "/workloads/{WorkloadId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a workload share.
    public func updateWorkloadShare(_ input: UpdateWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkloadShareOutput {
        return try await self.client.execute(operation: "UpdateWorkloadShare", path: "/workloads/{WorkloadId}/shares/{ShareId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upgrade lens review.
    public func upgradeLensReview(_ input: UpgradeLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpgradeLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
