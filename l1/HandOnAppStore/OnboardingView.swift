//
//  OnboardingView.swift
//  l1
//
//  Created by Ankit Ammanagi on 10/06/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var currentPage: Int = 0
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    
    @State var showAlert: Bool = false
    @State var alertMessage: String = ""
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            ZStack {
                switch currentPage {
                case 0:
                    welcomeSection
                        .transition(transition)
                
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 10)
                }
            }
            .alert("Alert", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(alertMessage)
            }
            
            VStack {
                Spacer()
                
                viewButton
            }
            .padding()
        }
    }
}

extension OnboardingView {
    
    private var viewButton: some View {
        Text(currentPage == 0 ? "Sign up" :
               currentPage == 3 ? "Finish" : "Next"
        )
        .font(.headline)
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .padding()
        .padding(.horizontal, 20)
        .background(Color.purple)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .onTapGesture {
            handleNext()
        }
    }
    
    private var welcomeSection: some View {
        VStack( alignment: .center, spacing: 20) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.purple)
            
            Text("Find your match")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.semibold)
                .overlay {
                    Capsule()
                        .fill(Color.purple)
                        .frame(height: 5)
                        .offset(y: 22)
                }
            
            Text("Discover your perfect match with our app. Sign in to find love and meaningful connections.")
                .font(.headline)
                .foregroundStyle(.purple
                )
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(20)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your name ?")
                .font(.title2)
                .foregroundStyle(.purple)
            
            TextField("Enter your name",
                      text: $name)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.purple)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding(20)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your age ?")
                .font(.title2)
                .foregroundStyle(.purple)
            
            Text("Age: \(Int(age))")
            
            Slider(value: $age, in: 18...100, step: 1)
            
            Spacer()
            Spacer()
        }
        .padding(20)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your name ?")
                .font(.title2)
                .foregroundStyle(.purple)
            
            
            Menu {
                Picker("",selection: $gender) {
                    Text("Male").tag("male")
                    Text("Female").tag("Female")
                    Text("Others").tag("others")
                }
            }
            label: {
                Text(gender.count > 1 ? gender : "Select Gender")
                    .padding(10)
                    .background(Color.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .tint(.white)
            }

            
            Spacer()
            Spacer()
        }
        .padding(20)
    }
}

extension OnboardingView {
    func handleNext() {
        
        switch currentPage {
            case 1:
            guard name.count > 3 else {
                alertMessage(msg: "Name should be atleast 4 characters long 😩")
                return
            }
            
        case 3:
            guard gender.count > 1 else {
                alertMessage(msg: "Please select a gender 😩")
                return
            }
            
        default:
            break
        }
        
        if currentPage == 3 {
            signIn()
        }
        else {
            withAnimation(.spring()) {
                currentPage += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func alertMessage(msg: String) {
        alertMessage = msg
        showAlert.toggle()
    }
}

#Preview {
    OnboardingView()
}
