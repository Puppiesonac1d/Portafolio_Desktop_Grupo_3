/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package portafolio;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.Timer;

/**
 *
 * @author The_S
 */
public class Menu extends javax.swing.JFrame {

    Conexion con = new Conexion();
    Connection cn = con.Conecta();

    public Menu() {
        initComponents();
        //Fecha
        Date sistFecha = new Date();
        SimpleDateFormat formato = new SimpleDateFormat("dd/MMM/YYYY");
        menuFecha.setText(" Fecha: " + formato.format(sistFecha));
        //Hora
        Timer tiempo = new Timer(100, (ActionListener) new Menu.horas());
        tiempo.start();
    }

    class horas implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            java.util.Date sistHora = new java.util.Date();
            String pmAm = "hh:mm a";
            SimpleDateFormat format = new SimpleDateFormat(pmAm);
            Calendar hoy = Calendar.getInstance();
            menuHora.setText(" Hora: " + String.format(format.format(sistHora), hoy));
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        contenedorBotones = new javax.swing.JPanel();
        btnListaUsuarios = new javax.swing.JButton();
        btnFlujosTarea = new javax.swing.JButton();
        btnSalir = new javax.swing.JButton();
        lblFondo = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        menuHora = new javax.swing.JMenu();
        menuFecha = new javax.swing.JMenu();
        codigoAutorizacionMenuTag = new javax.swing.JMenu();
        contactoMenuTag = new javax.swing.JMenu();
        fonoMenuTag = new javax.swing.JMenu();
        idUsuarioMenuTag = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(1280, 720));
        setMinimumSize(new java.awt.Dimension(1280, 720));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        contenedorBotones.setBackground(new java.awt.Color(0, 0, 0));
        contenedorBotones.setLayout(new java.awt.GridLayout(2, 2, 20, 20));

        btnListaUsuarios.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnListaUsuarios.setText("Mantenedor de Usuarios");
        btnListaUsuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnListaUsuariosActionPerformed(evt);
            }
        });
        contenedorBotones.add(btnListaUsuarios);

        btnFlujosTarea.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnFlujosTarea.setText("Ver Flujos de Tarea");
        btnFlujosTarea.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFlujosTareaActionPerformed(evt);
            }
        });
        contenedorBotones.add(btnFlujosTarea);

        btnSalir.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnSalir.setText("Salir");
        btnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalirActionPerformed(evt);
            }
        });
        contenedorBotones.add(btnSalir);

        getContentPane().add(contenedorBotones, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 120, 1060, 480));

        lblFondo.setIcon(new javax.swing.ImageIcon("C:\\Users\\The_S\\Downloads\\2560x1440-2990736-blue-purple-mountains-hexagon-photoshop-2k-peaceful-nature___mixed-wallpapers.jpg")); // NOI18N
        getContentPane().add(lblFondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1280, 700));

        menuHora.setText(" Hora: ");
        jMenuBar1.add(menuHora);

        menuFecha.setText(" Fecha: ");
        jMenuBar1.add(menuFecha);
        jMenuBar1.add(codigoAutorizacionMenuTag);
        jMenuBar1.add(contactoMenuTag);
        jMenuBar1.add(fonoMenuTag);
        jMenuBar1.add(idUsuarioMenuTag);

        setJMenuBar(jMenuBar1);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btnSalirActionPerformed

    private void btnListaUsuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnListaUsuariosActionPerformed
        MantenedorUsuarios mantenedor = new MantenedorUsuarios();
        mantenedor.setVisible(true);
        this.dispose();

    }//GEN-LAST:event_btnListaUsuariosActionPerformed

    private void btnFlujosTareaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFlujosTareaActionPerformed
        FlujosPendientes flujos = new FlujosPendientes();
        flujos.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnFlujosTareaActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnFlujosTarea;
    private javax.swing.JButton btnListaUsuarios;
    private javax.swing.JButton btnSalir;
    private javax.swing.JMenu codigoAutorizacionMenuTag;
    private javax.swing.JMenu contactoMenuTag;
    private javax.swing.JPanel contenedorBotones;
    private javax.swing.JMenu fonoMenuTag;
    private javax.swing.JMenu idUsuarioMenuTag;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JLabel lblFondo;
    private javax.swing.JMenu menuFecha;
    private javax.swing.JMenu menuHora;
    // End of variables declaration//GEN-END:variables
}
