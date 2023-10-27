//
//  SettingsView.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                            
                            Divider().padding(.vertical, 4)
                            
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                Text("Restart".uppercased())
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                            )
                        }
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                            
                            SettingsRowView(name: "Developer",content: "FFK")
                            SettingsRowView(name: "Designer",content: "İDC")
                            SettingsRowView(name: "Compatibility",content: "IOS 16")
                            SettingsRowView(name: "Website",linkLabel: "Linkedln",linkDestination: "www.linkedin.com/in/furkanfatihkok")
                            SettingsRowView(name: "SwiftUI",content: "2.0")
                            SettingsRowView(name: "Version",content: "1.1.0")
                        }
                }
                
                
                
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
