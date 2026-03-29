/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelos;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class Administrador {
    private int id;
    private String CorreoE;
    private String usuario;
    private String password;

    public Administrador() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCorreoE() {
        return CorreoE;
    }

    public void setCorreoE(String CorreoE) {
        this.CorreoE = CorreoE;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Administrador{" + "id=" + id + ", CorreoE=" + CorreoE + ", usuario=" + usuario + ", password=" + password + '}';
    }
    
    
}

