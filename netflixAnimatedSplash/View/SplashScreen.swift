import SwiftUI
import SDWebImageSwiftUI

struct SplashScreen: View {
    
    @State var animationFinished: Bool = false
    @State var animationStarted: Bool = false
    @State var removeGIF: Bool = false

    var body: some View {
        
        
        ZStack {
            
            Home()
            
            ZStack {
                Color("BG")
                    .ignoresSafeArea()
                
                if !removeGIF {
                    ZStack{
                        if animationStarted {
                            if animationFinished{
                                Image("netflix")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }else {
                                AnimatedImage(url: getLogoURL())
                    //                .customLoopCount(nil)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }else {
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .animation(.none, value: animationFinished)
                }

            }
            .opacity(animationFinished ? 0 : 1)
        }
        .onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                animationStarted = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ){
                    withAnimation(.easeInOut(duration: 0.7)){
                        animationFinished = true
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                        removeGIF = true
                    }
                    
                }
            }
        }
    }
    
    func getLogoURL()->URL{
        let bundle = Bundle.main.path(forResource: "netflix", ofType: "gif")
        let url = URL(fileURLWithPath: bundle ?? "")
        return url
    }
    
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
