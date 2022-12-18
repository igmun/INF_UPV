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
import javafx.scene.Cursor;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.GridPane;
import javafx.scene.shape.Circle;
import static javafxmlapplication.Utils.*;

/**
 *
 * @author jsoler
 */
public class FXMLDocumentController implements Initializable {
    private Label labelMessage;
    @FXML
    private GridPane tablero;
    @FXML
    private Circle ficha;
    private double sceneX0;
    private double sceneY0;
    //=========================================================
    // event handler, fired when button is clicked or 
    //                      when the button has the focus and enter is pressed
    private void handleButtonAction(ActionEvent event) {
        labelMessage.setText("Hello, this is your first JavaFX project - IPC");
    }
    
    //=========================================================
    // you must initialize here all related with the object 
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }  
    
    
    @FXML
    private void moverficha(KeyEvent event){
        KeyCode tecla = event.getCode();
        Integer columna = tablero.getColumnIndex(ficha);
        Integer fila = tablero.getRowIndex(ficha);
        switch(tecla){
            case UP: fila--;
                fila = rowNorm(tablero, fila);
            
            break;
            case DOWN: fila++;
                fila = rowNorm(tablero,fila);
            break;
            case LEFT: columna--;
                columna = columnNorm(tablero,columna);
          
            break;
            case RIGHT: columna++;
                columna = columnNorm(tablero,columna);
            break;
        }   
        tablero.setConstraints(ficha,columna, fila);
    }

    @FXML
    private void moverclick(MouseEvent event) {
        
        tablero.setConstraints(ficha, columnCalc(tablero,event.getSceneX()) ,rowCalc(tablero,event.getSceneY()));
        
    }

    @FXML
    private void sueltaficha(MouseEvent event) {
        ficha.setTranslateX(0);
        ficha.setTranslateY(0);
        moverclick(event);
    }

    @FXML
    private void arrastraficha(MouseEvent event) {
        ficha.setTranslateX(event.getSceneX()-sceneX0);
        ficha.setTranslateY(event.getSceneY()-sceneY0);
    }

    @FXML
    private void pulsaficha(MouseEvent event) {
        sceneX0 = event.getSceneX();
        sceneY0 = event.getSceneY();
        System.out.println("pulsarFicha()");
        event.consume();
    }   

    @FXML
    private void saleficha(MouseEvent event) {
        ficha.setCursor(Cursor.DEFAULT);
    }

    @FXML
    private void entraficha(MouseEvent event) {
        ficha.setCursor(Cursor.HAND);
    }
    
    
    
}
