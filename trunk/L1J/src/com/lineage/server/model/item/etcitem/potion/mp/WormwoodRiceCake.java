package com.lineage.server.model.item.etcitem.potion.mp;

import com.lineage.server.model.Instance.L1ItemInstance;
import com.lineage.server.model.Instance.L1PcInstance;
import com.lineage.server.model.item.ItemExecutor;
import com.lineage.server.model.item.etcitem.UsePotion_AddMp;

/**
 * 艾草年糕 - 40067
 * 
 * @author jrwz
 */
public class WormwoodRiceCake implements ItemExecutor {

    public static ItemExecutor get() {
        return new WormwoodRiceCake();
    }

    private WormwoodRiceCake() {
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

        UsePotion_AddMp.get().useItem(pc, item, 0, 15, 0, 190);
        // 基本加魔量与动画ID
        // Factory.getPotion().useAddMpPotion(pc, 15, 190);

        // 删除道具
        pc.getInventory().removeItem(item, 1);
    }
}
