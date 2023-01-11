//
// Created by 何文凯 on 2023/1/9.
//

import Foundation

class User {
    public var userId: String = "";
    public var userName: String = "";
    public var icon: String = "";

    init(userId: String, userName: String, icon: String) {
        self.icon = icon;
        self.userId = userId;
        self.userName = userName;
    }

}