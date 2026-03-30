/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import java.util.List;

/**
 *
 * @author HP
 */
public interface ICRUD<T> {
    void crear(T obj);
    List<T> obtenerTodos();
    T obtenerPorId(int id);
    void actualizar(T obj);
    void eliminar(int id);
    
}
