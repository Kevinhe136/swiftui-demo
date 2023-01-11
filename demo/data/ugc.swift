//
// Created by 何文凯 on 2023/1/9.
//

import Foundation

class Ugc {
    private var user: User;
    private var title: String;
    private var content: String;
    private var cover: String;
    private var imageList: [String];

    init(user: User, title: String, content: String, cover: String, imageList: [String]) {
        self.user = user;
        self.title = title;
        self.content = content;
        self.cover = cover;
        self.imageList = imageList;
    }
}
