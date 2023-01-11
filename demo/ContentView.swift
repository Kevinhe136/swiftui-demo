//
//  ContentView.swift
//  demo
//
//  Created by 何文凯 on 2022/11/7.
//

import SwiftUI
import

struct ContentView: View {
    @State
    private var weightStr = "";
    @State
    private var heightStr = "";
    @State
    private var bmi: Double = 0
    @State
    private var classification: String = ""

    var body: some View {
        VStack {
            Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)

            Text("Calculator!").font(Font.largeTitle)
            TextField("Enter Weight", text: $weightStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.brown);
            TextField("Enter Height", text: $heightStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.brown);

            Button(action: {
                let weight = Double(weightStr)!
                let height = Double(heightStr)!

                self.bmi = weight / (height * height)

                //分类
                if bmi < 18.5 {
                    self.classification = "Underweight"
                } else if bmi < 24.9 {
                    self.classification = "Healthy weight"
                } else if bmi < 29.9 {
                    self.classification = "Overweight"
                } else {
                    self.classification = "Obese"
                }
            }, label: {
                Text("Calculate")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)


            })
                    .padding()
            Text("BMI: \(bmi, specifier: "%.1f"),\(classification)").font(.title).padding()
        }
                .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}

struct test {
    var aa: Int

    init(a: Int = 1) {
        aa = a;
    }
}

struct test1 {
    var t: test

    init(a: Int) {
        t = test()
        print(t)
    }
}


struct ContentView2: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            Text("Hello, world2!")
        }
                .padding()
    }
}
