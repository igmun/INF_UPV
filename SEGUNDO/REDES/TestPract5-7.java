package testPract;

import java.util.Scanner;
import java.io.*;
import java.net.*;

public class fichero
{
    public static void main(){
       
       try{
           ServerSocket ss = new ServerSocket(9000);
         
           while(true){
           Socket socket1 = ss.accept(); //espera a un cliente  
           Scanner entrada1 = new Scanner(socket1.getInputStream());
         
           String nombre = entrada1.nextLine().toString(); 
           int puerto = (int) entrada1.nextInt(); 
           
           Socket socket2 = new Socket(nombre, puerto);
           
           PrintWriter salida2 = new PrintWriter(socket2.getOutputStream(), true);
           
           salida2.println(socket1.getPort());
           salida2.println(socket2.getLocalPort());
           
           while(true){ 
               if(!socket1.isConnected()){ 
                   socket1.close();
                   socket2.close();
                   break;
                }
               String linea = entrada1.nextLine(); 
               salida2.println(linea); 
            }
           
         }
        } catch(IOException e){System.out.println(e);}
    }
}
