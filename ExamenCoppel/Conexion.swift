//
//  Conexion.swift
//  ExamenCoppel
//
//  Created by Rodrigo Arango on 05/01/23.
//

import Foundation

protocol ConexionDelegado{
    func mostrarMovies(listaPeliculas: [Movies])
        
    }
    
struct ConexionManager{
    var delegado : ConexionDelegado?
    
    func mostrarMovies(){
        let urlString = "https://api.themoviedb.org/3/movie/now_playing?api_key=0173b1b624ed76447236107e2fb26d91&language=en-US&page=1"
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let tarea = session.dataTask(with: url){
                datos, respuesta, error in
                if error != nil{
                    print("error al obtener datos de la api: ", error?.localizedDescription)
                }
            }
            tarea.resume()
        }
    }
    func parsearJSON(movies: Data) -> [Movies]?{
        let decodificador = JSONDecoder()
        do{
            let datosDecodificados =  try decodificador.decode([Movies].self, from: movies)
            
            return datosDecodificados
        }
        catch
        {
            print("error al decodificar: ", error.localizedDescription)
            return nil
        }
    }
}
