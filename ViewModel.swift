////
////  ViewModel.swift
////  SystemLine
////
////  Created by AtheerAlshehri on 09/02/2023.
////
//
//import SwiftUI
//
////class ViewModel: ObservableObject {
////    @Published var image: UIImage?
////     @Published var showPicker = false
////
////     }
//import UIKit
//
//typealias HTTPHeaders = [String: String]
//
//final class ImageUploader {
//
//    let uploadImage: UIImage
//    let number: Int
//    let boundary = "example.boundary.\(ProcessInfo.processInfo.globallyUniqueString)"
//    let fieldName = "upload_image"
//    let endpointURI: URL = .init(string: "https://example.com/uploadImage")!
//
//    var parameters: Parameters? {
//        return [
//            "number": number
//        ]
//    }
//    var headers: HTTPHeaders {
//        return [
//            "Content-Type": "multipart/form-data; boundary=\(boundary)",
//            "Accept": "application/json"
//        ]
//    }
//
//    init(uploadImage: UIImage, number: Int) {
//        self.uploadImage = uploadImage
//        self.number = number
//    }
//
//    func uploadImage(completionHandler: (ImageUploadResult) -> Void) {
//        let imageData = image.jpegData(compressionQuality: 1)!
//        let mimeType = imageData.mimeType!
//
//        var request = URLRequest(url: endpointURI, method: "POST", headers: headers)
//        request.httpBody = createHttpBody(binaryData: imageData, mimeType: mimeType)
//
//        let session = URLSession(configuration: .default)
//        let task = session.dataTask(with: request) { (data, urlResponse, error) in
//            let statusCode = (urlResponse as? HTTPURLResponse)?.statusCode ?? 0
//            if let data = data, case (200..<300) = statusCode {
//                do {
//                    let value = try Response(from: data, statusCode: statusCode)
//                    completionHandler(.success(value))
//                } catch {
//                    let _error = ResponseError(statusCode: statusCode, error: AnyError(error))
//                    completionHandler(.failure(_error))
//                }
//            }
//            let tmpError = error ?? NSError(domain: "Unknown", code: 499, userInfo: nil)
//            let _error = ResponseError(statusCode: statusCode, error: AnyError(error))
//            completionHandler(.failure(_error))
//        }
//        task.resume()
//    }
//
//    private func createHttpBody(binaryData: Data, mimeType: String) -> Data {
//        var postContent = "--\(boundary)\r\n"
//        let fileName = "\(UUID().uuidString).jpeg"
//        postContent += "Content-Disposition: form-data; name=\"\(fieldName)\"; filename=\"\(fileName)\"\r\n"
//        postContent += "Content-Type: \(mimeType)\r\n\r\n"
//
//        var data = Data()
//        guard let postData = postContent.data(using: .utf8) else { return data }
//        data.append(postData)
//        data.append(binaryData)
//
//        // その他パラメータがあれば追加
//        if let parameters = parameters {
//            var content = ""
//            parameters.forEach {
//                content += "\r\n--\(boundary)\r\n"
//                content += "Content-Disposition: form-data; name=\"\($0.key)\"\r\n\r\n"
//                content += "\($0.value)"
//            }
//            if let postData = content.data(using: .utf8) { data.append(postData) }
//        }
//
//        // HTTPBodyの終了を設定
//        guard let endData = "\r\n--\(boundary)--\r\n".data(using: .utf8) else { return data }
//        data.append(endData)
//        return data
//    }
//}


