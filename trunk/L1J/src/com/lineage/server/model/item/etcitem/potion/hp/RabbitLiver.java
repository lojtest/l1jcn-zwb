package com.lineage.server.model.item.etcitem.potion.hp;

import com.lineage.server.model.Instance.L1ItemInstance;
import com.lineage.server.model.Instance.L1PcInstance;
import com.lineage.server.model.item.ItemExecutor;
import com.lineage.server.model.item.etcitem.UsePotion_AddHp;

/**
 * 兔子的肝 - 40043
 * 
 * @author jrwz
 */
public class RabbitLiver implements ItemExecutor {

    public static ItemExecutor get() {
        return new RabbitLiver();
    }

    private RabbitLiver() {
    }

    /**
     * 道具执行
     * 
     * @param data
     *            参数
     * @param pc
     *            对象
     * @param item
     *            道具
     */
    @Override
    public void execute(final int[] data, final L1PcInstance pc,
            final L1ItemInstance item) {

        UsePotion_AddHp.get().useItem(pc, item, 0, 600, 0, 189);
        // 基本加血量与动画ID
        // Factory.getPotion().useHealingPotion(pc, 600, 189);

        // 删除道具
        pc.getInventory().removeItem(item, 1);
    }
}
