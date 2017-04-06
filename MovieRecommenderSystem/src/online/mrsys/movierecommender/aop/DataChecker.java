package online.mrsys.movierecommender.aop;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import online.mrsys.common.remote.Protocol;
import online.mrsys.movierecommender.domain.Rating;

/**
 * A class monitoring the save and update actions of {@link Rating} entities using AOP.
 * It will create a buffer file locally containing the information of updated
 * ratings.
 * 
 * @author Cong Bao
 *
 */
public class DataChecker {

    private static final Logger logger = Logger.getLogger(DataChecker.class.getName());

    /**
     * Triggered after the save action of entity is successfully returned.
     * <p>Cut Point: execution(* online.mrsys.common.dao.BaseDao.save(..)) && args(entity)
     * 
     * @param entity
     *            the entity been saved
     */
    public void afterSave(Object entity) {
        if (!(entity instanceof Rating)) {
            return;
        }
        final Rating rating = (Rating) entity;
        logger.log(Level.INFO, "New rating record detected: {0}", rating);
        final StringBuilder sb = new StringBuilder(Protocol.NEW_PREFIX);
        sb.append(rating.getUser().getId());
        sb.append("#");
        sb.append(rating.getMovie().getId());
        sb.append("#");
        sb.append(rating.getRating());
        bufferData(sb.toString());
        logger.log(Level.INFO, "New rating record has been written into buffer");
    }

    /**
     * Triggered after the update action of entity is successfully returned.
     * <p>Cut Point: execution(* online.mrsys.common.dao.BaseDao.update(..)) && args(entity)
     * 
     * @param entity
     *            the entity been updated
     */
    public void afterUpdate(Object entity) {
        if (!(entity instanceof Rating)) {
            return;
        }
        final Rating rating = (Rating) entity;
        logger.log(Level.INFO, "Update in rating record detected: {0}", rating);
        final StringBuilder sb = new StringBuilder(Protocol.UPDATE_PREFIX);
        sb.append(rating.getUser().getId());
        sb.append("#");
        sb.append(rating.getMovie().getId());
        sb.append("#");
        sb.append(rating.getRating());
        bufferData(sb.toString());
        logger.log(Level.INFO, "Updates of rating record have been written into buffer");
    }

    private void bufferData(String content) {
        File file = new File("data.buf");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                logger.log(Level.SEVERE, "Error when creating file", e);
            }
        }
        try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)));) {
            writer.write(content);
            writer.newLine();
        } catch (IOException e) {
            logger.log(Level.SEVERE, "Error when writing file", e);
        }
    }

}