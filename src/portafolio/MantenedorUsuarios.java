/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package portafolio;

import java.awt.Color;
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
public class MantenedorUsuarios extends javax.swing.JFrame {

    Conexion con = new Conexion();
    Connection cn = con.Conecta();

    public MantenedorUsuarios() {
        initComponents();
        //Fecha
        Date sistFecha = new Date();
        SimpleDateFormat formato = new SimpleDateFormat("dd/MMM/YYYY");
        menuFecha.setText(" Fecha: " + formato.format(sistFecha));
        //Hora
        Timer tiempo = new Timer(100, (ActionListener) new MantenedorUsuarios.horas());
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
        jPanel1 = new javax.swing.JPanel();
        btnListaUsuarios = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        btnSalir = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        menuHora = new javax.swing.JMenu();
        menuFecha = new javax.swing.JMenu();
        codigoAutorizacionMenuTag = new javax.swing.JMenu();
        contactoMenuTag = new javax.swing.JMenu();
        fonoMenuTag = new javax.swing.JMenu();
        idUsuarioMenuTag = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1280, 720));

        contenedorBotones.setBackground(new java.awt.Color(58, 175, 169));
        contenedorBotones.setPreferredSize(new java.awt.Dimension(1280, 720));

        jPanel1.setBackground(new java.awt.Color(43, 122, 120));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.setLayout(new java.awt.GridLayout(1, 0, 20, 0));

        btnListaUsuarios.setBackground(new java.awt.Color(102, 102, 102));
        btnListaUsuarios.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnListaUsuarios.setForeground(new java.awt.Color(204, 204, 204));
        btnListaUsuarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/portafolio/imagenes/multiple-users-silhouette(3).png"))); // NOI18N
        btnListaUsuarios.setText("Lista de Usuarios");
        btnListaUsuarios.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 5, true));
        btnListaUsuarios.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnListaUsuariosMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnListaUsuariosMouseExited(evt);
            }
        });
        btnListaUsuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnListaUsuariosActionPerformed(evt);
            }
        });
        jPanel1.add(btnListaUsuarios);

        jButton2.setBackground(new java.awt.Color(102, 102, 102));
        jButton2.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        jButton2.setForeground(new java.awt.Color(204, 204, 204));
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/portafolio/imagenes/user-silhouette.png"))); // NOI18N
        jButton2.setText("Agregar nuevo usuario");
        jButton2.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 5, true));
        jButton2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jButton2MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jButton2MouseExited(evt);
            }
        });
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2);

        btnSalir.setBackground(new java.awt.Color(102, 102, 102));
        btnSalir.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnSalir.setForeground(new java.awt.Color(204, 204, 204));
        btnSalir.setText("Volver al menú principal");
        btnSalir.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 5, true));
        btnSalir.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnSalirMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnSalirMouseExited(evt);
            }
        });
        btnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalirActionPerformed(evt);
            }
        });
        jPanel1.add(btnSalir);

        javax.swing.GroupLayout contenedorBotonesLayout = new javax.swing.GroupLayout(contenedorBotones);
        contenedorBotones.setLayout(contenedorBotonesLayout);
        contenedorBotonesLayout.setHorizontalGroup(
            contenedorBotonesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, contenedorBotonesLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1256, Short.MAX_VALUE)
                .addContainerGap())
        );
        contenedorBotonesLayout.setVerticalGroup(
            contenedorBotonesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contenedorBotonesLayout.createSequentialGroup()
                .addGap(250, 250, 250)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 193, Short.MAX_VALUE)
                .addGap(246, 246, 246))
        );

        menuHora.setText(" Hora: ");
        menuHora.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(menuHora);

        menuFecha.setText(" Fecha: ");
        menuFecha.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(menuFecha);

        codigoAutorizacionMenuTag.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(codigoAutorizacionMenuTag);

        contactoMenuTag.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(contactoMenuTag);

        fonoMenuTag.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(fonoMenuTag);

        idUsuarioMenuTag.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jMenuBar1.add(idUsuarioMenuTag);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contenedorBotones, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contenedorBotones, javax.swing.GroupLayout.DEFAULT_SIZE, 689, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSalirActionPerformed
        this.dispose();
        Menu menu = new Menu();
        menu.setVisible(true);
    }//GEN-LAST:event_btnSalirActionPerformed

    private void btnListaUsuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnListaUsuariosActionPerformed
        ListaUsuarios lista = new ListaUsuarios();
        lista.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnListaUsuariosActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        CrearUsuario usuario = new CrearUsuario();
        usuario.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void btnSalirMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSalirMouseEntered
        btnSalir.setBackground(new Color(32, 140, 204));
    }//GEN-LAST:event_btnSalirMouseEntered

    private void btnSalirMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSalirMouseExited
        btnSalir.setBackground(new Color(102, 102, 102));
    }//GEN-LAST:event_btnSalirMouseExited

    private void jButton2MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton2MouseEntered
        jButton2.setBackground(new Color(32, 140, 204));
    }//GEN-LAST:event_jButton2MouseEntered

    private void jButton2MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton2MouseExited
        jButton2.setBackground(new Color(102, 102, 102));
    }//GEN-LAST:event_jButton2MouseExited

    private void btnListaUsuariosMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnListaUsuariosMouseEntered
        btnListaUsuarios.setBackground(new Color(32, 140, 204));
    }//GEN-LAST:event_btnListaUsuariosMouseEntered

    private void btnListaUsuariosMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnListaUsuariosMouseExited
        btnListaUsuarios.setBackground(new Color(102, 102, 102));
    }//GEN-LAST:event_btnListaUsuariosMouseExited

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
            java.util.logging.Logger.getLogger(MantenedorUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MantenedorUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MantenedorUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MantenedorUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MantenedorUsuarios().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnListaUsuarios;
    private javax.swing.JButton btnSalir;
    private javax.swing.JMenu codigoAutorizacionMenuTag;
    private javax.swing.JMenu contactoMenuTag;
    private javax.swing.JPanel contenedorBotones;
    private javax.swing.JMenu fonoMenuTag;
    private javax.swing.JMenu idUsuarioMenuTag;
    private javax.swing.JButton jButton2;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JMenu menuFecha;
    private javax.swing.JMenu menuHora;
    // End of variables declaration//GEN-END:variables
}
