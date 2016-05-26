
/* Autogenerated. Do not edit. */

import Foundation
import Alamofire
/// The client for the API. Call routes using the namespaces inside this object.
public class DropboxTeamClient: DropboxTransportClient {
    /// Shared instance for convenience
    public static var sharedClient: DropboxTeamClient!
    /// Routes within the team namespace. See TeamRoutes for details.
    public var team: TeamRoutes!

    public override init(accessToken: DropboxAccessToken, selectUser: String? = nil, baseHosts: [String: String]? = nil, userAgent: String? = nil) {
        super.init(accessToken: accessToken, selectUser: selectUser, baseHosts: baseHosts, userAgent: userAgent)
        self.team = TeamRoutes(client: self)
    }

    public func asMember(memberId: String) -> DropboxClient {
        return DropboxClient(accessToken: self.accessToken, selectUser: memberId)
    }
}