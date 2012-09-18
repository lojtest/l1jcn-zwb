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
package com.lineage.server.clientpackets;

import com.lineage.server.ClientThread;
import com.lineage.server.datatables.SkillsTable;
import com.lineage.server.model.Instance.L1PcInstance;
import com.lineage.server.serverpackets.S_AddSkill;
import com.lineage.server.serverpackets.S_ServerMessage;
import com.lineage.server.serverpackets.S_SkillSound;
import com.lineage.server.templates.L1Skills;

/**
 * Class <code>C_SkillBuyItemOK</code> 购买魔法OK:材料.
 * 
 * @author jrwz
 * @version 2012-4-13上午02:46:39
 * @see com.lineage.server.clientpackets
 * @since JDK1.7
 */
public final class C_SkillBuyItemOK extends ClientBasePacket {

    /** 返回一个字符串,表示客户端的数据包类型. */
    private static final String C_SKILL_BUY_ITEM_OK = "[C] C_SkillBuyItemOK";

    /**
     * 购买魔法OK:材料.
     * 
     * @param abyte0
     *            资料
     * @param client
     *            客户端对象
     * @throws Exception
     *             执行异常
     */
    public C_SkillBuyItemOK(final byte[] abyte0, final ClientThread client)
            throws Exception {
        super(abyte0);

        final int count = this.readH();
        final int sid[] = new int[count];
        int level1 = 0;
        int level2 = 0;
        int level3 = 0;
        int level1_cost = 0;
        int level2_cost = 0;
        int level3_cost = 0;
        String skill_name = null;
        int skill_id = 0;

        final L1PcInstance pc = client.getActiveChar();
        if (pc.isGhost()) {
            return;
        }
        for (int i = 0; i < count; i++) {
            sid[i] = this.readD();
            switch (sid[i]) {
                // Lv1魔法
                case 0:
                    level1 += 1;
                    level1_cost += 100;
                    break;
                case 1:
                    level1 += 2;
                    level1_cost += 100;
                    break;
                case 2:
                    level1 += 4;
                    level1_cost += 100;
                    break;
                case 3:
                    level1 += 8;
                    level1_cost += 100;
                    break;
                case 4:
                    level1 += 16;
                    level1_cost += 100;
                    break;
                case 5:
                    level1 += 32;
                    level1_cost += 100;
                    break;
                case 6:
                    level1 += 64;
                    level1_cost += 100;
                    break;
                case 7:
                    level1 += 128;
                    level1_cost += 100;
                    break;

                // Lv2魔法
                case 8:
                    level2 += 1;
                    level2_cost += 400;
                    break;
                case 9:
                    level2 += 2;
                    level2_cost += 400;
                    break;
                case 10:
                    level2 += 4;
                    level2_cost += 400;
                    break;
                case 11:
                    level2 += 8;
                    level2_cost += 400;
                    break;
                case 12:
                    level2 += 16;
                    level2_cost += 400;
                    break;
                case 13:
                    level2 += 32;
                    level2_cost += 400;
                    break;
                case 14:
                    level2 += 64;
                    level2_cost += 400;
                    break;
                case 15:
                    level2 += 128;
                    level2_cost += 400;
                    break;

                // Lv3魔法
                case 16:
                    level3 += 1;
                    level3_cost += 900;
                    break;
                case 17:
                    level3 += 2;
                    level3_cost += 900;
                    break;
                case 18:
                    level3 += 4;
                    level3_cost += 900;
                    break;
                case 19:
                    level3 += 8;
                    level3_cost += 900;
                    break;
                case 20:
                    level3 += 16;
                    level3_cost += 900;
                    break;
                case 21:
                    level3 += 32;
                    level3_cost += 900;
                    break;
                case 22:
                    level3 += 64;
                    level3_cost += 900;
                    break;
                case 23:
                    level3 += 128;
                    level3_cost += 900;
                    break;

                default:
                    break;
            }
        }

        if (!pc.isGm()) {
            switch (pc.getType()) {
                case 1: // 骑士
                    if (pc.getLevel() < 50) {
                        level1 = 0;
                        level1_cost = 0;
                    }
                    level2 = 0;
                    level2_cost = 0;
                    level3 = 0;
                    level3_cost = 0;
                    break;

                default:
                    break;
            }
        }

        if ((level1 == 0) && (level2 == 0) && (level3 == 0)) {
            return;
        }
        if (pc.getInventory().consumeItem(40503, 10) // 芮克妮的网
                && pc.getInventory().consumeItem(40494, 50) // 纯粹的米索莉块
                && pc.getInventory().consumeItem(40520, 100) // 精灵粉末
                && pc.getInventory().consumeItem(40519, 10)) { // 潘的鬃毛
            final S_SkillSound s_skillSound = new S_SkillSound(pc.getId(), 224);
            pc.sendPackets(s_skillSound);
            pc.broadcastPacket(s_skillSound);
            final S_AddSkill s_addskill = new S_AddSkill(level1, level2,
                    level3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0);
            pc.sendPackets(s_addskill);

            if ((level1 & 1) == 1) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(1);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 2) == 2) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(2);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 4) == 4) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(3);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 8) == 8) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(4);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 16) == 16) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(5);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 32) == 32) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(6);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 64) == 64) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(7);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level1 & 128) == 128) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(8);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }

            if ((level2 & 1) == 1) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(9);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 2) == 2) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(10);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 4) == 4) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(11);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 8) == 8) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(12);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 16) == 16) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(13);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 32) == 32) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(14);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 64) == 64) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(15);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level2 & 128) == 128) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(16);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }

            if ((level3 & 1) == 1) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(17);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 2) == 2) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(18);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 4) == 4) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(19);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 8) == 8) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(20);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 16) == 16) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(21);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 32) == 32) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(22);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
            if ((level3 & 64) == 64) {
                final L1Skills l1skills = SkillsTable.getInstance()
                        .getTemplate(23);
                skill_name = l1skills.getName();
                skill_id = l1skills.getSkillId();
                SkillsTable.getInstance().spellMastery(pc.getId(), skill_id,
                        skill_name, 0, 0);
            }
        } else {
            pc.sendPackets(new S_ServerMessage(339)); // \f1学习魔法的所需要的%0%o材料不足。
        }
    }

    @Override
    public String getType() {
        return C_SKILL_BUY_ITEM_OK;
    }
}
