/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package portafolio;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JOptionPane;
import javax.swing.Timer;
import javax.swing.table.DefaultTableModel;
import net.proteanit.sql.DbUtils;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author The_S
 */
public class ListaUsuarios extends javax.swing.JFrame {

    Conexion con = new Conexion();
    Connection cn = con.Conecta();

    public ListaUsuarios() {
        initComponents();
        try {
            CallableStatement stmt = cn.prepareCall("BEGIN listar_usuarios(?); END;");
            stmt.registerOutParameter(1, OracleTypes.CURSOR); //REF CURSOR
            stmt.execute();
            ResultSet rs = ((OracleCallableStatement) stmt).getCursor(1);
            tblListaUsuarios.setModel(DbUtils.resultSetToTableModel(rs));
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error: " + ex);
        }
        //Fecha
        Date sistFecha = new Date();
        SimpleDateFormat formato = new SimpleDateFormat("dd/MMM/YYYY");
        menuFecha.setText(" Fecha: " + formato.format(sistFecha));
        //Hora
        Timer tiempo = new Timer(100, (ActionListener) new ListaUsuarios.horas());
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

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        contenedorBotones = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        btnSalir = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblListaUsuarios = new javax.swing.JTable();
        btnBorrarUsuario = new javax.swing.JButton();
        btnEditarUsuario = new javax.swing.JButton();
        lblFondo = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        menuHora = new javax.swing.JMenu();
        menuFecha = new javax.swing.JMenu();
        codigoAutorizacionMenuTag = new javax.swing.JMenu();
        contactoMenuTag = new javax.swing.JMenu();
        fonoMenuTag = new javax.swing.JMenu();
        idUsuarioMenuTag = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        contenedorBotones.setBackground(new java.awt.Color(0, 0, 0));

        jPanel1.setBackground(new java.awt.Color(102, 102, 102));

        btnSalir.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnSalir.setText("Volver a mantenedor");
        btnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalirActionPerformed(evt);
            }
        });

        tblListaUsuarios = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int celIndex){
                return false;
            }
        };
        tblListaUsuarios.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tblListaUsuarios);

        btnBorrarUsuario.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnBorrarUsuario.setText("Eliminar Usuario");
        btnBorrarUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBorrarUsuarioActionPerformed(evt);
            }
        });

        btnEditarUsuario.setFont(new java.awt.Font("Dialog", 1, 20)); // NOI18N
        btnEditarUsuario.setText("Editar Usuario");
        btnEditarUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarUsuarioActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnEditarUsuario)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnBorrarUsuario)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnSalir))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1172, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 510, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnEditarUsuario, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 46, Short.MAX_VALUE)
                    .addComponent(btnBorrarUsuario, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnSalir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        javax.swing.GroupLayout contenedorBotonesLayout = new javax.swing.GroupLayout(contenedorBotones);
        contenedorBotones.setLayout(contenedorBotonesLayout);
        contenedorBotonesLayout.setHorizontalGroup(
            contenedorBotonesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contenedorBotonesLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        contenedorBotonesLayout.setVerticalGroup(
            contenedorBotonesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contenedorBotonesLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        getContentPane().add(contenedorBotones, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, 1220, 610));

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
        this.dispose();
        MantenedorUsuarios mantenedor = new MantenedorUsuarios();
        mantenedor.setVisible(true);
    }//GEN-LAST:event_btnSalirActionPerformed

    private void btnBorrarUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBorrarUsuarioActionPerformed
        try {
            int resp = JOptionPane.showConfirmDialog(null, "¿Confirma que desea borrar al usuario?", "Se quitará de la lista", JOptionPane.YES_NO_OPTION);
            if (resp == 0) {
                String correo = tblListaUsuarios.getValueAt(tblListaUsuarios.getSelectedRow(), 1).toString();
                System.out.println(correo);
                CallableStatement stmt = cn.prepareCall(" BEGIN borrar_usuarios(?);END; ");
                stmt.setString(1, correo);
                stmt.execute();
                JOptionPane.showMessageDialog(this, "Se ha eliminado el usuario con el correo: " + correo);
            } else {
                JOptionPane.showMessageDialog(this, "No se han realizado cambios");
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error: " + ex);
        }
        //Refresh de los datos
        try {
            CallableStatement stmt = cn.prepareCall("BEGIN listar_usuarios(?); END;");
            stmt.registerOutParameter(1, OracleTypes.CURSOR); //REF CURSOR
            stmt.execute();
            ResultSet rs = ((OracleCallableStatement) stmt).getCursor(1);
            tblListaUsuarios.setModel(DbUtils.resultSetToTableModel(rs));
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error: " + ex);
        }
    }//GEN-LAST:event_btnBorrarUsuarioActionPerformed

    private void btnEditarUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarUsuarioActionPerformed
        try {
            ActualizarUsuario update = new ActualizarUsuario();
            update.setVisible(true);
            int i = tblListaUsuarios.getSelectedRow();
            update.txtCorreo.setText(tblListaUsuarios.getValueAt(i, 1).toString());
            update.txtPass.setText(tblListaUsuarios.getValueAt(i, 2).toString());
            update.lblIDUsuario.setText(tblListaUsuarios.getValueAt(i, 3).toString());
            update.txtNombre.setText(tblListaUsuarios.getValueAt(i, 4).toString());
            update.txtApellido.setText(tblListaUsuarios.getValueAt(i, 5).toString());
            update.txtApellidoMaterno.setText(tblListaUsuarios.getValueAt(i, 6).toString());
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error: " + ex);
        }

    }//GEN-LAST:event_btnEditarUsuarioActionPerformed

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
            java.util.logging.Logger.getLogger(ListaUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ListaUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ListaUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ListaUsuarios.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ListaUsuarios().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBorrarUsuario;
    private javax.swing.JButton btnEditarUsuario;
    private javax.swing.JButton btnSalir;
    private javax.swing.JMenu codigoAutorizacionMenuTag;
    private javax.swing.JMenu contactoMenuTag;
    private javax.swing.JPanel contenedorBotones;
    private javax.swing.JMenu fonoMenuTag;
    private javax.swing.JMenu idUsuarioMenuTag;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblFondo;
    private javax.swing.JMenu menuFecha;
    private javax.swing.JMenu menuHora;
    private javax.swing.JTable tblListaUsuarios;
    // End of variables declaration//GEN-END:variables
}
