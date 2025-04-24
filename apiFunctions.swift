struct JokeModel: Codable{
    let id:Int
    let type:String
    let setup:String
    let punchline:String 
}

// Mark - native api call function

func fetchjokes(completion: @escaping(Result<[JokeModel],Error>)-> Void){
    let urlstr="https://official-joke-api.appspot.com/"

    if let url=URL(string:urlstr){
        let session=URLSession.shared

        let dataTask=session.dataTask(with:url){data,response,error in 
        
            guard let jokeData=data else{return}
            
            do{
                let jsonData
            }
            
            }
    }
}