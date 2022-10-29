//
//  OnboardingViewScreen.swift
//  classExercise
//
//  Created by Nicolaas Geldenhuys on 2022/10/25.
//

import SwiftUI

struct OnboardingViewScreen: View {
    
    //reference to AppStorage onboarding
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    var onboarding: [Onboard] = OnboardingData
    
    var body: some View {
        WindowGroup{
            
            SplashScreenView_()
            
        
            ZStack{
                Color("bg2")
                    .ignoresSafeArea(.all)
                
                VStack(){
                    
                    
                    TabView{
                        ForEach(onboarding) { onboard in
                            OnboardCardView(onboard: onboard)
                        }
                        
                    }//tabview
                    
                    
                    
                    .tabViewStyle(.page)
                    //           Spacer()
                    
                    Button(action: {
                        //Set onboarding complete
                        onboardingComplete = true
                    }) {
                        Text("Home")
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,40)
                            .padding(.trailing,40)
                            .foregroundColor(Color("bg"))
                        
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40).fill(Color("bg")).opacity(0.2)
                                
                                
                                
                                
                            )
                        
                        
                        //                    .padding(.leading,60)
                    }
                    
                }
                .padding(.top,-60)
                
                //        .padding(.leading,-60)
            }
        } //groupwindow
    }
}//ZStack
//    }//zstack for image
//}//georeader


struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
    }
}
