/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelos;

import java.sql.Date;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class Usuario {
    private int id;
    private String usuario;
    private String CorreoE;
    private String password;
    private long telefono;     
    private Date fechaNacimiento;

    public Usuario() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCorreoE() {
        return CorreoE;
    }

    public void setCorreoE(String CorreoE) {
        this.CorreoE = CorreoE;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", usuario=" + usuario + ", CorreoE=" + CorreoE + ", password=" + password + ", telefono=" + telefono + ", fechaNacimiento=" + fechaNacimiento + '}';
    }
    
    
            
}
