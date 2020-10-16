package com.company;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.*;

public class Diff extends JPanel  {

    private final int B_WIDTH = 300;
    private final int B_HEIGHT = 300;
    
    public Diff(){
        iniDiff();
    }

    private void iniDiff() {
        addKeyListener(new Diff.TAdapter());
        setBackground(Color.black);
        setFocusable(true);
        setPreferredSize(new Dimension(B_WIDTH, B_HEIGHT));


    }
    @Override
    public void paintComponent(Graphics g) {
        super.paintComponent(g);

        doDrawing(g);
    }

    private void doDrawing(Graphics g) {
        Toolkit.getDefaultToolkit().sync();
        String msg = "Válassz nehézséget:1-3";
        Font small = new Font("Helvetica", Font.BOLD, 14);
        FontMetrics metr = getFontMetrics(small);

        g.setColor(Color.white);
        g.setFont(small);
        g.drawString(msg, (B_WIDTH - metr.stringWidth(msg)) / 2, B_HEIGHT / 2);


    }

    private class TAdapter extends KeyAdapter {

        @Override
        public void keyPressed(KeyEvent e) {

            int key = e.getKeyCode();
            if(key==KeyEvent.VK_1)
            {

                JFrame ex = new Snake( 140);
                ex.setVisible(true);

            }
            if(key==KeyEvent.VK_2)
            {

                JFrame ex = new Snake( 70);
                ex.setVisible(true);
            }
            if(key==KeyEvent.VK_3)
            {

                JFrame ex = new Snake(20 );
                ex.setVisible(true);

            }


        }
    }

}
