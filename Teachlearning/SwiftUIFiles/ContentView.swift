//
//  ContentView.swift
//  Teachlearning
//
//  Created by Mateo Leon Restrepo on 7/07/20.
//  Copyright © 2020 Intergrupo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var rating = 4.5
    @State var price = 25
    @State var time = 2
    func fillStars() {
        for number in 0...Int(rating) {
            Image(systemName: "star.fill")
        }
    }
    //.navigationBarTitle(Text("SwiftUI"))
    //.background(Color("ColorApp"))
    var body: some View {
        
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Factorización con fracciones parciales")
                        .font(.title).lineLimit(nil)
                        .foregroundColor(Color("Title"))
                    HStack(alignment: .center, spacing: 10) {
                        HStack(alignment: .center, spacing: 3) {
                            Image(systemName: "dollarsign.circle")
                            HStack(alignment: .center, spacing: 0) {
                                Text(String(price)).font(.headline)
                                Text(".000").font(.body)
                            }
                        }.foregroundColor(Color("GreenCash"))
                        HStack(alignment: .center, spacing: 3) {
                            Image(systemName: "clock.fill")
                            Text(String(time) + "h").font(.headline)
                        }.foregroundColor(Color("Title"))
                    }.frame(alignment: .leading)

                    Text("Si tienes dificultades con este método de factorización con gusto resolveré tus dudas te plantearé ejercicios y te explicaré paso a paso en una asesoría de 2 horas")
                        .font(.headline)
                        .lineLimit(nil)
                        .foregroundColor(Color("NormalText"))
                }.padding()
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 20) {
                        Image("ProfilePic")
                            .resizable()
                            .frame(width: 128.0, height: 128.0)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 3) {
                            Text("Luis Felipe Duarte").foregroundColor(Color("TitleColor"))
                            HStack(alignment: .center, spacing: 4) {
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.lefthalf.fill")
                                Text(String(rating))
                            }.foregroundColor(Color("RateColor"))
                        }
                    }.padding(11.0)
                    Text("Egresado en Ingeniería Electrónica, Ingeniería Electrica actualmente realizando Maestría en la Universidad Pontificia Bolivariana 3 veces ganador de las olimpiadas de matemáticas de Colombia")
                        .foregroundColor(Color("TitleColor"))
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color(red: 25 / 255, green: 131 / 255, blue: 164 / 255))
                .cornerRadius(15)

                Button(action: {
                    // Code Goes Here
                }) {
                    Text("Solicitar asesoría")
                        .foregroundColor(Color("PrimaryButtonText"))
                }
                .padding(.vertical)
                .padding(.horizontal, 80)
                .background(Color("PrimaryButton"))
                .cornerRadius(15)
            }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
    }
}
