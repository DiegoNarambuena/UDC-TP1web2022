package app.controllers;

import org.javalite.activeweb.AppController;

public class IndexController extends AppController{
    
    public void index (){
        redirect(CuentaBancariaController.class);
    }
    
}
