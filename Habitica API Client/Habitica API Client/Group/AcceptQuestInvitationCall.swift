//
//  AcceptQuestInvitationCall.swift
//  Habitica API Client
//
//  Created by Phillip Thelen on 03.05.18.
//  Copyright © 2018 HabitRPG Inc. All rights reserved.
//

import Foundation
import Habitica_Models
import FunkyNetwork
import ReactiveSwift

public class AcceptQuestInvitationCall: ResponseObjectCall<QuestStateProtocol, APIQuestState> {
    public init(groupID: String, stubHolder: StubHolderProtocol? = StubHolder(responseCode: 200, stubFileName: "group.json")) {
        super.init(httpMethod: .POST, endpoint: "groups/\(groupID)/quests/accept", postData: nil, stubHolder: stubHolder)
    }
}
