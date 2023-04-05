//
//  pageIntro.swift
//  MorSorkorApp (iOS)
//
//  Created by เกสร สุภาวงษ์ on 5/4/2566 BE.
//

import SwiftUI

struct pageIntro: View {
    
    @State var changePage : Bool = false
    @State var pageOne1 : Bool = false
    
    var body: some View {
            
            VStack {
//                Image("Pik1")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 300, height: 400)
//                    .padding(20)
//
//                VStack(alignment: .leading, spacing: 10) {
//                    Spacer(minLength: 0)
//
//                    Text("จัดตารางคิวงาน")
//                        .fontWeight(.bold)
//                        .font(.system(size: 40))
//
//                    Text("เป็นธรรมดาที่งานจะเข้ามาพร้อมๆกันจนเราสบสัน ด้วยตัวลิสต์งานนี้เราช่วยคุณได้")
//                        .fontWeight(.regular)
//                        .foregroundColor(.gray)
//                        .font(.system(size: 20))
//
//                    Button {
//                        pageOne1.toggle()
//                    } label: {
//                        Text("ไปต่อจ้า")
//                    }
//                    .fullScreenCover(isPresented: $pageOne1) {
//                        IntroTwo()
//                    }
//
//                    NavigationLink(destination: IntroTwo(),
//
//                                   label: {
//                        Text("ต่อไป")
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical, 18)
//                            .frame(maxWidth: .infinity)
//                            .font(.system(size: 20))
//                            .background {
//                                Capsule()
//                                    .fill(Color("Pinku"))
//                                    .shadow(radius: 10)
//                            }
//                    })
//                    .padding(30)
                }.padding(20)
            }
    }

struct IntroTwo: View {
    @State var pageTwo2 : Bool = false
    var body: some View {
        
        VStack {
            Image("Pik1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                .padding(20)
            
            VStack(alignment: .leading) {
                Spacer(minLength: 0)
                
                Text("จัดตารางคิวงาน")
                    .fontWeight(.bold)
                    .font(Font.custom("NotoSansThai-ExtraBold", size: 30))
                    .padding(8)
                
                Text("เป็นธรรมดาที่งานจะเข้ามาพร้อมๆกันจนเราสบสัน ด้วยตัวลิสต์งานนี้เราช่วยคุณได้")
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .font(Font.custom("NotoSansThai-Regular", size: 16))
                
                
                Image("Pik2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                    .padding(10)
                    .offset(x:70)
                
                VStack(alignment: .leading) {
                    Spacer(minLength: 0)
                    
                    Text("ส่งงานทันเดดไลน์")
                        .fontWeight(.bold)
                        .font(Font.custom("NotoSansThai-ExtraBold", size: 30))
                        .padding(8)
                    
                    Text("เพื่อป้องกันการสับสนเวลา ฟีตเจอร์ปฏิทินช่วยคุณได้")
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                        .font(Font.custom("NotoSansThai-Regular", size: 16))
                    
                    //                    NavigationLink(destination: pageLogin(),
                    Button {
                        pageTwo2.toggle()
                    } label: {
                        Text("Next")
                            .foregroundColor(.white)
                            .padding(.vertical, 14)
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 20))
                            .background {
                                Capsule()
                                    .fill(Color("Pinku"))
                                    .shadow(radius: 10)
                            }
                            .sheet(isPresented: $pageTwo2) {
                                pageLogin()
                            }
                        
                        //                                   label: {
                        //                        Text("ต่อไป")
                        //                            .fontWeight(.semibold)
                        //                            .foregroundColor(.white)
                        //                            .padding(.vertical, 18)
                        //                            .frame(maxWidth: .infinity)
                        //                            .font(.system(size: 20))
                        //                            .background {
                        //                                Capsule()
                        //                                    .fill(Color("Pinku"))
                        //                                    .shadow(radius: 10)
                        //                            }
                        //                    })
                        //                    .padding(30)
                    }.padding(20)
                }
                
                
            }
        }
    }
}
    struct pageIntro_Previews: PreviewProvider {
        static var previews: some View {
            pageIntro()
                .environmentObject(AuthViewModel())
        }
    }
    
    

