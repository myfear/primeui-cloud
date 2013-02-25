/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.eisele.primeui.cloud;

/**
 *
 * @author eiselem
 */
public class ValueHolder {

    public ValueHolder() {
    }

    public ValueHolder(String label) {
        this.label = label;
        this.value = "v_" + label;
    }
    private String label;
    private String value;

    @Override
    public String toString() {
        return "ValueHolder{" + "label=" + label + ", value=" + value + '}';
    }
}
