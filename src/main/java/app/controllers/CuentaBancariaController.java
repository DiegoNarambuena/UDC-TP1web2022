package app.controllers;
import app.models.CuentaBancaria;
import java.util.LinkedList;
import org.javalite.activeweb.annotations.POST;
import org.javalite.activeweb.AppController;

public class CuentaBancariaController extends AppController{
    LinkedList<CuentaBancaria> lista_cuentas = CuentaBancaria.getList_cuentas();
    public void index(){
        
        view("cuentas",lista_cuentas);
    }
    
   @POST           
    public void movimiento(){
        String origen = param("origen");
        String destino = param("destino");
        String monto = param("monto");
        
        CuentaBancaria cuenta_origen = lista_cuentas.get(Integer.valueOf(origen));
        CuentaBancaria cuenta_destino = lista_cuentas.get(Integer.valueOf(destino));
        Boolean exito = CuentaBancaria.transferir(cuenta_origen, cuenta_destino, monto);
        
        
        if(exito){
            
            view("origen", cuenta_origen);
            view("destino", cuenta_destino);
            view("monto", monto);
        } else {
            view("error", true);
        }
    }
       
   }
