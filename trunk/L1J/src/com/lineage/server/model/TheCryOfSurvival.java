/**
 *                            License
 * THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS  
 * CREATIVE COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). 
 * THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW.  
 * ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR  
 * COPYRIGHT LAW IS PROHIBITED.
 * 
 * BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND  
 * AGREE TO BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE  
 * MAY BE CONSIDERED TO BE A CONTRACT,
 * THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED 
 * HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.
 * 
 */
package com.lineage.server.model;

import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.lineage.server.model.Instance.L1PcInstance;

/**
 * Class <code>TheCryOfSurvival</code> 生存的呐喊计时器.
 * 
 * @author jrwz
 * @version 2012-3-24下午01:42:36
 * @see com.lineage.server.model
 * @since JDK1.7
 */
public final class TheCryOfSurvival extends TimerTask {

    /** 提示信息. */
    private static final Logger LOG = Logger.getLogger(TheCryOfSurvival.class
            .getName());
    private final L1PcInstance _pc;

    /**
     * 生存的呐喊计时器.
     * 
     * @param pc
     *            角色
     */
    public TheCryOfSurvival(final L1PcInstance pc) {
        this._pc = pc;
    }

    @Override
    public void run() {
        try {
            if (this._pc.isDead()) {
                return;
            }
            final int time = this._pc.getCryTime();
            this._pc.setCryTime(time + 1);
            final int maxTime = 30;
            if (time >= maxTime) {
                this._pc.stopCryOfSurvival();
            }
        } catch (final Throwable e) {
            LOG.log(Level.WARNING, e.getLocalizedMessage(), e);
        }
    }

}
