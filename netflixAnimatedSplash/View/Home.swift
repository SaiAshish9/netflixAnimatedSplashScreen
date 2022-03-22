import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            HStack(spacing:9){
                Image("nav")
                    .resizable()
                    .frame(width: 100.0, height: 70.0)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Button("Help"){}
                Button("Privacy"){}
            }
            .font(.system(size:16,weight: .bold))
            .foregroundColor(.primary)
            
            Image("netflix")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .padding(.top,30)
            
            Text("Watch on any device")
                .font(.title.bold())
                .font(.system(size:16))
                .padding(.top,25)
            
            Text("Stream on your phone,\n laptop, TV.")
                .font(.title2)
                .font(.system(size:16))
                .multilineTextAlignment(.center)
                .padding(.top,18)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("SIGN IN")
                    .foregroundColor(.white)
                    .padding(.vertical,12)
                    .frame(maxWidth: .infinity)
                    .background(Color("Red"))
            }
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
