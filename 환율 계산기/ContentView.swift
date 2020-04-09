import SwiftUI
struct AUDKRW : Codable {
    var AUDKRW: [Double]
}
struct BRLKRW : Codable {
    var BRLKRW: [Double]
}
struct CADKRW : Codable {
    var CADKRW: [Double]
}
struct CHFKRW : Codable {
    var CHFKRW: [Double]
}
struct CNYKRW : Codable {
    var CNYKRW: [Double]
}
struct EURKRW : Codable {
    var EURKRW: [Double]
}
struct GBPKRW : Codable {
    var GBPKRW: [Double]
}
struct HKDKRW : Codable {
    var HKDKRW: [Double]
}
struct INRKRW : Codable {
    var INRKRW: [Double]
}
struct JPYKRW : Codable {
    var JPYKRW: [Double]
}
struct MXNKRW : Codable {
    var MXNKRW: [Double]
}
struct RUBKRW : Codable {
    var RUBKRW: [Double]
}
struct THBKRW : Codable {
    var THBKRW: [Double]
}
struct TWDKRW : Codable {
    var TWDKRW: [Double]
}
struct USDKRW : Codable {
    var USDKRW: [Double]
}
struct VNDKRW : Codable {
    var VNDKRW: [Double]
}
struct ContentView: View {
    @State var input = ""
    @State var price = ""
    @State var otherCurrency = "AUD"
    @State var abc = ""
    @State var whichDir = "toWon"
    @State var she = ""
    @State var previousCurr = ""
    let availableCurr = [
        ["호주 달러 AUD","AUD"],
        ["브라질 헤알 BRL","BRL"],
        ["캐나다 달러 CAD","CAD"],
        ["스위스 프랑 CHF","CHF"],
        ["중국 위안 CNY","CNY"],
        ["유럽 유로 EUR","EUR"],
        ["영국 파운드 GBP","GBP"],
        ["홍콩 달러 HKD","HKD"],
        ["인도 루피 INR","INR"],
        ["일본 엔 JPY","JPY"],
        ["멕시코 페소 MXN","MXN"],
        ["러시아 루블 RUB","RUB"],
        ["태국 바트 THB","THB"],
        ["대만 달러 TWD","TWD"],
        ["미국 달러 USD","USD"],
        ["베트남 동 VND","VND"]
    ]
    
    let currencytype: Dictionary<String, String> = [
        "AUD": "호주 달러",
        "BRL": "브라질 헤알",
        "CAD": "캐나다 달러",
        "CHF": "스위스 프랑",
        "CNY": "중국 위안",
        "EUR": "유럽 유로",
        "GBP": "영국 파운드",
        "HKD": "홍콩 달러",
        "INR": "인도 루피",
        "JPY": "일본 엔",
        "MXN": "멕시코 페소",
        "RUB": "러시아 루블",
        "THB": "태국 바트",
        "TWD": "대만 달러",
        "USD": "미국 달러",
        "VND": "베트남 동"
    ]
    
    func getCurrency(currency: String) -> String {
        guard let url = URL(string: "https://earthquake.kr:23490/query/\(currency)KRW") else { return "Error" }
        var request = URLRequest(url: url)
        var result = "erererd"
        var a: Data = "".data(using: .utf8)!
        request.httpMethod = "GET"
        let session = URLSession.shared
        var processDone: Bool = false
        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                a = data
                do {
                    switch(currency) {
                    case "AUD":
                        let json = try JSONDecoder().decode(AUDKRW.self, from: a)
                        result = String(json.AUDKRW[0])
                        break
                    case "BRL":
                        let json = try JSONDecoder().decode(BRLKRW.self, from: a)
                        result = String(json.BRLKRW[0])
                        break
                    case "CAD":
                        let json = try JSONDecoder().decode(CADKRW.self, from: a)
                        result = String(json.CADKRW[0])
                        break
                    case "CHF":
                        let json = try JSONDecoder().decode(CHFKRW.self, from: a)
                        result = String(json.CHFKRW[0])
                        break
                    case "CNY":
                        let json = try JSONDecoder().decode(CNYKRW.self, from: a)
                        result = String(json.CNYKRW[0])
                        break
                    case "EUR":
                        let json = try JSONDecoder().decode(EURKRW.self, from: a)
                        result = String(json.EURKRW[0])
                        break
                    case "GBP":
                        let json = try JSONDecoder().decode(GBPKRW.self, from: a)
                        result = String(json.GBPKRW[0])
                        break
                    case "HKD":
                        let json = try JSONDecoder().decode(HKDKRW.self, from: a)
                        result = String(json.HKDKRW[0])
                        break
                    case "INR":
                        let json = try JSONDecoder().decode(INRKRW.self, from: a)
                        result = String(json.INRKRW[0])
                        break
                    case "JPY":
                        let json = try JSONDecoder().decode(JPYKRW.self, from: a)
                        result = String(json.JPYKRW[0])
                        break
                    case "MXN":
                        let json = try JSONDecoder().decode(MXNKRW.self, from: a)
                        result = String(json.MXNKRW[0])
                        break
                    case "RUB":
                        let json = try JSONDecoder().decode(RUBKRW.self, from: a)
                        result = String(json.RUBKRW[0])
                        break
                    case "THB":
                        let json = try JSONDecoder().decode(THBKRW.self, from: a)
                        result = String(json.THBKRW[0])
                        break
                    case "TWD":
                        let json = try JSONDecoder().decode(TWDKRW.self, from: a)
                        result = String(json.TWDKRW[0])
                        break
                    case "USD":
                        let json = try JSONDecoder().decode(USDKRW.self, from: a)
                        result = String(json.USDKRW[0])
                        break
                    case "VND":
                        let json = try JSONDecoder().decode(VNDKRW.self, from: a)
                        result = String(json.VNDKRW[0])
                        break
                    default:
                        result = ""
                        break
                    }
                    processDone = true
                } catch {
                    print(error)
                }
                return
            }
        }.resume()
        while(!processDone) {
            // just waiting for the process to end
        }
        print("Out case \(result)")
        return result
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    Picker("", selection: $whichDir){
                        Text("\(currencytype[otherCurrency]!) --> 한국 원").tag("toWon")
                        Text("한국 원 --> \(currencytype[otherCurrency]!)").tag("fromWon")
                    }.pickerStyle(SegmentedPickerStyle()).padding()
                }
                Section(header: Text("")) {
                    if(whichDir == "fromWon"){
                        Text("\((input as NSString).floatValue) 한국 원")
                        Text(" = \((input as NSString).floatValue / ((getCurrency(currency: otherCurrency)) as NSString).floatValue, specifier: "%.3f") \(currencytype[otherCurrency]!)")
                        TextField("환산할 한국 원 (KRW)", text: $input).keyboardType(.decimalPad)
                    }else{
                        Text("\((input as NSString).floatValue) \(currencytype[otherCurrency]!)")
                        Text(" = \((input as NSString).floatValue * ((getCurrency(currency: otherCurrency)) as NSString).floatValue, specifier: "%.2f") 원")
                        TextField("환산할 \(currencytype[otherCurrency]!) (\(otherCurrency))", text: $input).keyboardType(.decimalPad)
                    }
                }
                Section(header: Text("")) {
                    Text("환산 대상 단위: \(currencytype[otherCurrency]!) (\(otherCurrency))")
                    Text("1 \(currencytype[otherCurrency]!)당 가격: \(getCurrency(currency: otherCurrency)) 한국 원")
                }
                Section(header: Text("")) {
                    Picker(selection: $abc, label: Text("설정")) {
                        Text("환산 대상 단위 설정")
                        Picker("", selection: $otherCurrency) {
                            ForEach(0 ..< availableCurr.count) {
                                Text(self.availableCurr[$0][0]).tag(self.availableCurr[$0][1])
                            }
                        }.pickerStyle(WheelPickerStyle())
                    }
                }
            }.navigationBarTitle("환율 계산기")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
