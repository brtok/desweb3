/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pratica.jsp;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Bruno */
@Named(value = "loginBean")
@SessionScoped
public class loginBean implements Serializable {

    private String login = "";
    private String senha = "";
    private int perfil = 0;
    private String hora = "";

    /**
     * Creates a new instance of loginBean
     */
    public loginBean() {
    }
    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public String getHoraServidor() {
        Date agora = new Date();
        DateFormat formato = new SimpleDateFormat("HH:mm:ss");
        hora = formato.format(agora);
        return hora;
    }
    
}
