/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Auto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Javier
 */
@Controller // 2 control + espacio indicamos que es un controlador
@RequestMapping("/ver.htm") //como vamos a acceder desde afuera es una clase no un servlet
public class verController {
    @RequestMapping(method = RequestMethod.GET)//si se intenta ingresar por get (url)
    public String otroMetodo(Model model){
    return "index";
    }
    //siempre los metodos dentro de los controladores deben retornar un String
    @RequestMapping(method = RequestMethod.POST)//le digo como se va a ejecutar x metodo POST
    public String recibir(@RequestParam("txtRut") String rut, Model model){//sustituto de una seccion model
        String a = "campos vacios";
        model.addAttribute("e", a);//guardo en el modelo una variable e 
        if (rut.trim().equals("")) {
            return "error";//muestra la vista error
        }
        else{
            Auto a1 = new Auto(1, "honda", "rojo");
            model.addAttribute("auto", a1);
        return "exito"; //muestro la vista exito
        }
    
    }
    
}
