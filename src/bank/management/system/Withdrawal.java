
package bank.management.system;

import javax.swing.*;
import java.awt.*; // For Frame, Button, etc.
import java.awt.event.*; // For ActionListener, ActionEvent, etc.
import java.util.*;

public class Withdrawal extends JFrame implements ActionListener {
    
    JTextField amount;
    JButton withdraw, back;
    String pinNumber;
    
    Withdrawal(String pinNumber) {  // Constructor for Deposit class — runs when a Deposit object is created
        
        this.pinNumber = pinNumber;
        setLayout(null);  // setting setBounds to null, otherwise setLayout won't work
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/atm.jpg"));
        Image i2 = i1.getImage().getScaledInstance(900, 900, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(0, 0, 900, 900);
        add(image);
        
        JLabel text = new JLabel("Enter the amount you want to withdraw");
        text.setForeground(Color.WHITE);
        text.setFont(new Font("System", Font.BOLD, 16));
        text.setBounds(170, 300, 400, 20);
        image.add(text);
        
        amount = new JTextField();
        amount.setFont(new Font("Raleway", Font.BOLD, 22));
        amount.setBounds(170, 350, 320, 25);
        amount.addActionListener(this);
        image.add(amount);
        
        withdraw = new JButton("Withdraw");
        withdraw.setBounds(355, 485, 150, 30);
        withdraw.addActionListener(this);
        image.add(withdraw);
        
        back = new JButton("Back");
        back.setBounds(355, 520, 150, 30);
        back.addActionListener(this);
        image.add(back);
        
        setSize(900, 900);
        setLocation(300, 0);
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == withdraw) {
            String number = amount.getText();
            Date date = new Date();
            if(number.equals("")){
                JOptionPane.showMessageDialog(null, "Please enter the amount you want to withdraw");
        } else {
                try{
                Conn conn = new Conn();
                String query = "INSERT INTO BANK VALUES('"+pinNumber+"', '"+date+"', 'Withdrawal', '"+number+"')";
                conn.s.executeUpdate(query);
                JOptionPane.showMessageDialog(null, "Rs "+number+" Withdraw Successfully");
                setVisible(false);
                new Transactions(pinNumber).setVisible(true);
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        }else if (ae.getSource() == back) {
            setVisible(false);
            new Transactions(pinNumber).setVisible(true);
        }
    }
    
    
    public static void main(String args[]) {
        new Withdrawal("");
    }
    
}
