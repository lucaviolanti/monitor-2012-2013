package monitor1213;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Observer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.text.DefaultCaret;
import xclipsjni.ClipsView;


/**
 * L'implementazione della classe ClipsView specifica per il progetto Monitor
 * 2012/2013
 *
 * @author Violanti Luca, Varesano Marco, Busso Marco, Cotrino Roberto
 */
public class MonitorView extends ClipsView implements Observer {

    private MonitorModel model;
    private JFrame view;
    private JPanel mapPanelContainer;
    private JPanel mapPanel;
    private JLabel[][] map;
    private JTextArea messageArea;
    private final int MAP_DIMENSION = 550;
    private final int DEFAULT_IMG_SIZE = 85;
    JPanel controlPanel;
    /**
     * È il costruttore da chiamare nel main per avviare l'intero sistema, apre
     * una nuova finestra con il controller, pronto per caricare il file .clp
     *
     */
    public MonitorView() {
        model = new MonitorModel();
        model.addObserver((Observer) this);
        initializeInterface();
    }

    @Override
    protected void onSetup() {
        //System.out.println("setupDone");
        DebugFrame.appendText("setupDone");
        initializeMap();
    }

    @Override
    protected void onAction() {
        //System.out.println("actionDone");
        DebugFrame.appendText("actionDone");
        try {
            updateMap();
        } catch (IOException ex) {
            Logger.getLogger(MonitorView.class.getName()).log(Level.SEVERE, null, ex);
        }
        updateMessages();
    }

    @Override
    protected void onDispose() {
        //System.out.println("disposeDone");
        DebugFrame.appendText("disposeDone");
        String result = model.getResult();
        int score = model.getScore();
        @SuppressWarnings("UnusedAssignment")
        String advise = "";
        if (result.equals("disaster")) {
            advise = "DISASTRO\n";
        } else if (model.getTime() == model.getMaxDuration()) {
            advise = "MAXDURATION RAGGIUNTA\n";
        } else {
            advise = "Il robot ha comunicato DONE\n";
            messageArea.append("time: " + model.getTime() + ", done");
        }
        advise = advise + "penalties: " + score;
        JOptionPane.showMessageDialog(mapPanel, advise, "Termine Esecuzione", JOptionPane.INFORMATION_MESSAGE);
    }

    /**
     * Chiamato nel costruttore inizializza l'interfaccia della finestra,
     * caricando il modulo del pannello di controllo.
     *
     */
    private void initializeInterface() {
        view = new JFrame();
        view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        view.setSize(new Dimension(656, 150));
        view.setResizable(false);
        view.setTitle("Monitor 2012/2013");
        view.setLayout(new BorderLayout());
        controlPanel = createControlPanel(model);
        ((JTextField) controlPanel.getComponent(5)).setText("0");
        ((JTextField) controlPanel.getComponent(7)).setText("0");       
        view.add(controlPanel, BorderLayout.NORTH);
        view.setVisible(true);
    }

    /**
     * Crea la prima versione della mappa, quella corrispondente all'avvio
     * dell'ambiente.
     *
     */
    private void initializeMap() {
        Integer timeLeft = model.getMaxDuration();
        ((JTextField) controlPanel.getComponent(9)).setText(timeLeft.toString());
        String[][] mapString = model.getMap();
        int x = mapString.length;
        int y = mapString[0].length;
        map = new JLabel[x][y];
        int cellDimension = Math.round(MAP_DIMENSION / x);
        
        // bloccata la dimensione massima delle singole immagini
        if(cellDimension > DEFAULT_IMG_SIZE) {
            cellDimension = DEFAULT_IMG_SIZE;
        }

        messageArea = new JTextArea();
        messageArea.setRows(4);
        //rende autoscrollante la textarea dei messaggi
        DefaultCaret caret = (DefaultCaret) messageArea.getCaret();
        caret.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        JScrollPane scroll = new JScrollPane(messageArea);
        view.add(scroll, BorderLayout.CENTER);

        mapPanelContainer = new JPanel();
        mapPanel = new JPanel();
        mapPanel.setLayout(new GridLayout(x, y));
        mapPanelContainer.add(mapPanel, BorderLayout.CENTER);

        for (int i = x - 1; i >= 0; i--) {
            for (int j = 0; j < y; j++) {
                ImageIcon icon = new ImageIcon("img" + File.separator + mapString[i][j] + "_ok.jpg");
                Image image = icon.getImage().getScaledInstance(cellDimension, cellDimension, Image.SCALE_SMOOTH);
                icon = new ImageIcon(image);
                map[i][j] = new JLabel(icon);
                map[i][j].setToolTipText("(" + (i + 1) + ", " + (j + 1) + ")");
                mapPanel.add(map[i][j]);
            }
        }
        view.add(mapPanelContainer, BorderLayout.SOUTH);

        view.pack();
    }

    /**
     * Aggiorna la mappa visualizzata nell'interfaccia per farla allineare alla
     * versione nel modello.
     *
     */
    private void updateMap() throws IOException {
        Integer step = model.getStep();
        Integer time = model.getTime();
        Integer timeLeft = model.getMaxDuration() - model.getTime();
        ((JTextField) controlPanel.getComponent(5)).setText(step.toString());
        ((JTextField) controlPanel.getComponent(7)).setText(time.toString());
        ((JTextField) controlPanel.getComponent(9)).setText(timeLeft.toString());
        
        String[][] mapString = model.getMap();
        int cellDimension = Math.round(MAP_DIMENSION / map.length);

        for (int i = map.length - 1; i >= 0; i--) {
            for (int j = 0; j < map[0].length; j++) {
                @SuppressWarnings("UnusedAssignment")
                String direction = "";
                ImageIcon icon;
                Image image;
                BufferedImage background;
                BufferedImage robot;
                BufferedImage combined;
                Graphics g;

                // cerca se, nei primi 6 caratteri (se ce ne sono almeno 6), c'è la stringa "robot_"...
                if (mapString[i][j].length() >= 6 && mapString[i][j].substring(0, 6).equals("robot_")) {
                    direction = model.getDirection();
                    // ...nel, caso prosegue dal 6° carattere in poi.
                    background = ImageIO.read(new File("img" + File.separator + mapString[i][j].substring(6, mapString[i][j].length()) + ".jpg"));
                    robot = ImageIO.read(new File("img" + File.separator + "robot_" + direction + ".png"));

                    // crea una nuova immagine, la dimensione è quella più grande tra le 2 img
                    int w = Math.max(background.getWidth(), robot.getWidth());
                    int h = Math.max(background.getHeight(), robot.getHeight());
                    combined = new BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB);

                    // disegna le immagini, preservando i canali alpha per le trasparenze
                    g = combined.getGraphics();
                    g.drawImage(background, 0, 0, null);
                    g.drawImage(robot, 0, 0, null);

                    icon = new ImageIcon(combined);
                } else {
                    icon = new ImageIcon("img" + File.separator + mapString[i][j] + ".jpg");
                }
                image = icon.getImage().getScaledInstance(cellDimension, cellDimension, Image.SCALE_SMOOTH);
                icon = new ImageIcon(image);
                map[i][j].setIcon(icon);
                map[i][j].repaint();
            }
        }
        //System.out.println("TURNO > " + model.getStep());
        DebugFrame.appendText("TURNO > " + model.getStep());
    }

    /**
     * Aggiorna i messaggi nel pannello dei messaggi
     *
     */
    private void updateMessages() {
        String message = model.getCommunications();
        if (message != null) {
            messageArea.append(message + "\n");
        }
    }

    @SuppressWarnings("ResultOfObjectAllocationIgnored")
    public static void main(String[] args) {
        new MonitorView();
    }
}
