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
 * MAY BE CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED 
 * HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.
 * 
 */
package com.lineage.server.command.executor;

import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.lineage.server.GMCommands;
import com.lineage.server.model.Instance.L1PcInstance;
import com.lineage.server.serverpackets.S_SystemMessage;
import com.lineage.server.utils.collections.Maps;

/**
 * GM指令：我的最爱
 */
public class L1Favorite implements L1CommandExecutor {
    private static Logger _log = Logger.getLogger(L1Favorite.class.getName());

    private static final Map<Integer, String> _faviCom = Maps.newMap();

    public static L1CommandExecutor getInstance() {
        return new L1Favorite();
    }

    private L1Favorite() {
    }

    @Override
    public void execute(final L1PcInstance pc, final String cmdName,
            final String arg) {
        try {
            if (!_faviCom.containsKey(pc.getId())) {
                _faviCom.put(pc.getId(), "");
            }
            String faviCom = _faviCom.get(pc.getId());
            if (arg.startsWith("set")) {
                // コマンドの登录
                final StringTokenizer st = new StringTokenizer(arg);
                st.nextToken();
                if (!st.hasMoreTokens()) {
                    pc.sendPackets(new S_SystemMessage("指令不存在。"));
                    return;
                }
                final StringBuilder cmd = new StringBuilder();
                final String temp = st.nextToken(); // コマンドタイプ
                if (temp.equalsIgnoreCase(cmdName)) {
                    pc.sendPackets(new S_SystemMessage(cmdName + " 不能加入自己的名字。"));
                    return;
                }
                cmd.append(temp + " ");
                while (st.hasMoreTokens()) {
                    cmd.append(st.nextToken() + " ");
                }
                faviCom = cmd.toString().trim();
                _faviCom.put(pc.getId(), faviCom);
                pc.sendPackets(new S_SystemMessage(faviCom + " 被登记在好友名单。"));
            } else if (arg.startsWith("show")) {
                pc.sendPackets(new S_SystemMessage("目前登记的指令: " + faviCom));
            } else if (faviCom.isEmpty()) {
                pc.sendPackets(new S_SystemMessage("没有被登记的名字。"));
            } else {
                final StringBuilder cmd = new StringBuilder();
                final StringTokenizer st = new StringTokenizer(arg);
                final StringTokenizer st2 = new StringTokenizer(faviCom);
                while (st2.hasMoreTokens()) {
                    final String temp = st2.nextToken();
                    if (temp.startsWith("%")) {
                        cmd.append(st.nextToken() + " ");
                    } else {
                        cmd.append(temp + " ");
                    }
                }
                while (st.hasMoreTokens()) {
                    cmd.append(st.nextToken() + " ");
                }
                pc.sendPackets(new S_SystemMessage(cmd + " 实行。"));
                GMCommands.getInstance().handleCommands(pc, cmd.toString());
            }
        } catch (final Exception e) {
            pc.sendPackets(new S_SystemMessage("请输入 " + cmdName + " set 玩家名称 "
                    + "| " + cmdName + " show | " + cmdName + " [数量]。"));
            _log.log(Level.SEVERE, e.getLocalizedMessage(), e);
        }
    }
}
