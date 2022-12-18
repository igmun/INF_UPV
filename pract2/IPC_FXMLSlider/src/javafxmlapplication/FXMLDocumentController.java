/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javafxmlapplication;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.shape.Rectangle;

/**
 *
 * @author jsoler
 */
public class FXMLDocumentController implements Initializable {

    @FXML
    private Rectangle rectangulo;
    @FXML
    private Slider vslider;
    @FXML
    private Slider hslider;

    
    //=========================================================
    // you must initialize here all related with the object 
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
       hslider.valueProperty().addListener((a, b, c) -> {
         rectangulo.setWidth((double)c);
       });
       
        
       vslider.valueProperty().addListener((a, b, c) -> {
        rectangulo.setHeight((double)c);
       });
    }    
}   