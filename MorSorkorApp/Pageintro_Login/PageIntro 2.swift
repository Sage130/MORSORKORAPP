//
//  PageIntro.swift
//  TuaMeaa
//
//  Created by เกสร สุภาวงษ์ on 2/4/2566 BE.
//

import SwiftUI

struct PageIntro: Identifiable, Hashable {
    
    var id: UUID = .init()
    var introAssetImage: String
    var title: String
    var subTitle: String
    var displaysAction: Bool = false
    
}
var pageIntros: [PageIntro] = [
    .init(introAssetImage: "Pik1", title: "จัดการคิวงานอันหนาแน่น", subTitle: "เป็นธรรมดาที่งานจะเข้ามาพร้อมๆกันจนเราสบสัน ด้วยตัวลิสต์งานนี้เราช่วยคุณได้"),
    .init(introAssetImage: "Pik2", title: "ส่งงานตรงเวลา", subTitle: "ด้วยการกำหนดวันบนปฏิทิน คุณสามารถรับรู้เวลาสิ้นสุดของงานได้", displaysAction: true),
]
    
