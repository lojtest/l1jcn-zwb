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
package l1j.server.server.datatables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import l1j.server.L1DatabaseFactory;
import l1j.server.server.utils.SQLUtil;

// Referenced classes of package l1j.server.server:
// IdFactory

public class LetterTable {

	private static Logger _log = Logger.getLogger(LetterTable.class.getName());

	private static LetterTable _instance;

	public LetterTable() {
	}

	public static LetterTable getInstance() {
		if (_instance == null) {
			_instance = new LetterTable();
		}
		return _instance;
	}

	// テンプレートID一览
	// 16:キャラクターが存在しない
	// 32:荷物が多すぎる
	// 48:血盟が存在しない
	// 64:※内容が表示されない(白字)
	// 80:※内容が表示されない(黑字)
	// 96:※内容が表示されない(黑字)
	// 112:おめでとうございます。%nあなたが参加された竞卖は最终価格%0アデナの価格で落札されました。
	// 128:あなたが提示された金额よりももっと高い金额を提示した方が现れたため、残念ながら入札に失败しました。
	// 144:あなたが参加した竞卖は成功しましたが、现在家を所有できる状态にありません。
	// 160:あなたが所有していた家が最终価格%1アデナで落札されました。
	// 176:あなたが申请なさった竞卖は、竞卖期间内に提示した金额以上での支払いを表明した方が现れなかったため、结局取り消されました。
	// 192:あなたが申请なさった竞卖は、竞卖期间内に提示した金额以上での支払いを表明した方が现れなかったため、结局取り消されました。
	// 208:あなたの血盟が所有している家は、本领主の领地に归属しているため、今后利用したいのなら当方に税金を收めなければなりません。
	// 224:あなたは、あなたの家に课せられた税金%0アデナをまだ纳めていません。
	// 240:あなたは、结局あなたの家に课された税金%0を纳めなかったので、警告どおりにあなたの家に对する所有权を剥夺します。

	public void writeLetter(int itemObjectId, int code, String sender,
			String receiver, String date, int templateId, byte[] subject,
			byte[] content) {

		Connection con = null;
		PreparedStatement pstm1 = null;
		ResultSet rs = null;
		PreparedStatement pstm2 = null;
		try {
			con = L1DatabaseFactory.getInstance().getConnection();
			pstm1 = con
					.prepareStatement("SELECT * FROM letter ORDER BY item_object_id");
			rs = pstm1.executeQuery();
			pstm2 = con
					.prepareStatement("INSERT INTO letter SET item_object_id=?, code=?, sender=?, receiver=?, date=?, template_id=?, subject=?, content=?");
			pstm2.setInt(1, itemObjectId);
			pstm2.setInt(2, code);
			pstm2.setString(3, sender);
			pstm2.setString(4, receiver);
			pstm2.setString(5, date);
			pstm2.setInt(6, templateId);
			pstm2.setBytes(7, subject);
			pstm2.setBytes(8, content);
			pstm2.execute();
		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SQLUtil.close(rs);
			SQLUtil.close(pstm1);
			SQLUtil.close(pstm2);
			SQLUtil.close(con);
		}
	}

	public void deleteLetter(int itemObjectId) {
		Connection con = null;
		PreparedStatement pstm = null;
		try {
			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con
					.prepareStatement("DELETE FROM letter WHERE item_object_id=?");
			pstm.setInt(1, itemObjectId);
			pstm.execute();
		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SQLUtil.close(pstm);
			SQLUtil.close(con);
		}
	}

}
