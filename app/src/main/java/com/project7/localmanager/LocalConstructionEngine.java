package com.project7.localmanager;

import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes.dex */
final class LocalConstructionEngine {
    LocalConstructionEngine() {
    }

    static boolean handles(String str) {
        return "areaBuildRequest".equals(str) || "areaLevelUpRequest".equals(str) || "playerDestroyBuilding".equals(str);
    }

    private static byte[] doc(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m7v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(89:6|(1:8)(1:306)|9|(5:10|11|12|13|14)|(5:(3:20|21|(2:25|(88:27|28|29|30|31|(80:(2:290|291)|34|35|(1:37)(1:289)|38|(1:288)(1:42)|43|44|(1:287)(1:48)|49|(2:51|52)(1:286)|53|54|(1:56)(1:285)|57|(5:59|(1:279)(1:63)|64|(1:278)(1:68)|69)(3:280|(1:282)(1:284)|283)|(1:71)(1:274)|72|(1:74)(1:273)|75|(1:77)(1:271)|78|79|80|(1:82)(1:268)|83|(3:85|86|87)(1:267)|88|(3:89|90|(4:92|(7:95|(2:97|(3:99|(1:101)|102))(1:112)|103|(1:105)(1:111)|(2:107|108)(1:110)|109|93)|113|114)(1:115))|116|(1:264)(2:124|(2:126|(49:128|129|(44:133|134|135|(1:260)(1:141)|142|143|(1:259)(1:149)|150|(3:151|152|(5:154|(1:156)(1:164)|157|(2:159|160)(2:162|163)|161)(1:165))|166|(1:168)(1:258)|(1:170)(1:257)|171|172|(2:174|175)(5:252|253|254|255|256)|176|(6:179|180|181|182|183|177)|191|192|193|194|(2:197|195)|198|(1:202)|203|(5:206|(2:207|(1:209)(1:210))|211|212|204)|213|214|(2:216|217)|218|(3:221|222|219)|223|224|225|(1:227)(1:247)|228|(1:230)|(1:232)(2:245|246)|233|234|235|236|237|238)|261|134|135|(0)|260|142|143|(1:145)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(2:200|202)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238))(1:263))|262|129|(46:133|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)|293|35|(0)(0)|38|(1:40)|288|43|44|(1:46)|287|49|(0)(0)|53|54|(0)(0)|57|(0)(0)|(0)(0)|72|(0)(0)|75|(0)(0)|78|79|80|(0)(0)|83|(0)(0)|88|(4:89|90|(0)(0)|114)|116|(1:118)|264|262|129|(0)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)))|235|236|237|238)|300|28|29|30|31|(0)|293|35|(0)(0)|38|(0)|288|43|44|(0)|287|49|(0)(0)|53|54|(0)(0)|57|(0)(0)|(0)(0)|72|(0)(0)|75|(0)(0)|78|79|80|(0)(0)|83|(0)(0)|88|(4:89|90|(0)(0)|114)|116|(0)|264|262|129|(0)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234) */
    /* JADX WARN: Can't wrap try/catch for region: R(93:6|(1:8)(1:306)|9|10|11|12|13|14|(5:(3:20|21|(2:25|(88:27|28|29|30|31|(80:(2:290|291)|34|35|(1:37)(1:289)|38|(1:288)(1:42)|43|44|(1:287)(1:48)|49|(2:51|52)(1:286)|53|54|(1:56)(1:285)|57|(5:59|(1:279)(1:63)|64|(1:278)(1:68)|69)(3:280|(1:282)(1:284)|283)|(1:71)(1:274)|72|(1:74)(1:273)|75|(1:77)(1:271)|78|79|80|(1:82)(1:268)|83|(3:85|86|87)(1:267)|88|(3:89|90|(4:92|(7:95|(2:97|(3:99|(1:101)|102))(1:112)|103|(1:105)(1:111)|(2:107|108)(1:110)|109|93)|113|114)(1:115))|116|(1:264)(2:124|(2:126|(49:128|129|(44:133|134|135|(1:260)(1:141)|142|143|(1:259)(1:149)|150|(3:151|152|(5:154|(1:156)(1:164)|157|(2:159|160)(2:162|163)|161)(1:165))|166|(1:168)(1:258)|(1:170)(1:257)|171|172|(2:174|175)(5:252|253|254|255|256)|176|(6:179|180|181|182|183|177)|191|192|193|194|(2:197|195)|198|(1:202)|203|(5:206|(2:207|(1:209)(1:210))|211|212|204)|213|214|(2:216|217)|218|(3:221|222|219)|223|224|225|(1:227)(1:247)|228|(1:230)|(1:232)(2:245|246)|233|234|235|236|237|238)|261|134|135|(0)|260|142|143|(1:145)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(2:200|202)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238))(1:263))|262|129|(46:133|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)|293|35|(0)(0)|38|(1:40)|288|43|44|(1:46)|287|49|(0)(0)|53|54|(0)(0)|57|(0)(0)|(0)(0)|72|(0)(0)|75|(0)(0)|78|79|80|(0)(0)|83|(0)(0)|88|(4:89|90|(0)(0)|114)|116|(1:118)|264|262|129|(0)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234|235|236|237|238)))|235|236|237|238)|300|28|29|30|31|(0)|293|35|(0)(0)|38|(0)|288|43|44|(0)|287|49|(0)(0)|53|54|(0)(0)|57|(0)(0)|(0)(0)|72|(0)(0)|75|(0)(0)|78|79|80|(0)(0)|83|(0)(0)|88|(4:89|90|(0)(0)|114)|116|(0)|264|262|129|(0)|261|134|135|(0)|260|142|143|(0)|259|150|(4:151|152|(0)(0)|161)|166|(0)(0)|(0)(0)|171|172|(0)(0)|176|(1:177)|191|192|193|194|(1:195)|198|(0)|203|(1:204)|213|214|(0)|218|(1:219)|223|224|225|(0)(0)|228|(0)|(0)(0)|233|234) */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0726, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0728, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0097, code lost:
    
        if (r43.processingNewbees.contains(20) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x072a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x072d, code lost:
    
        r29 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d4 A[EDGE_INSN: B:115:0x02d4->B:116:0x02d4 BREAK  A[LOOP:0: B:89:0x0232->B:114:0x02c6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e2 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x031c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0331 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0351 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x037f A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03ce A[EDGE_INSN: B:165:0x03ce->B:166:0x03ce BREAK  A[LOOP:2: B:151:0x0375->B:161:0x03b7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03f2 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TRY_LEAVE, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x04a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0518 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, LOOP:4: B:195:0x0515->B:197:0x0518, LOOP_END, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0533 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x055e A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x060e A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TRY_LEAVE, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x06a7 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x06c8 A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_LEAVE, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x01c6 A[Catch: ArithmeticException | IllegalArgumentException -> 0x072a, IllegalArgumentException -> 0x072c, TRY_ENTER, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x072a, blocks: (B:31:0x0081, B:35:0x00a4, B:38:0x00bb, B:43:0x00d7, B:49:0x013c, B:53:0x016e, B:57:0x017f, B:72:0x01de, B:75:0x01e9, B:280:0x01c6, B:283:0x01d2, B:286:0x0150), top: B:30:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0150 A[Catch: ArithmeticException | IllegalArgumentException -> 0x072a, IllegalArgumentException -> 0x072c, TRY_ENTER, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x072a, blocks: (B:31:0x0081, B:35:0x00a4, B:38:0x00bb, B:43:0x00d7, B:49:0x013c, B:53:0x016e, B:57:0x017f, B:72:0x01de, B:75:0x01e9, B:280:0x01c6, B:283:0x01d2, B:286:0x0150), top: B:30:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4 A[Catch: ArithmeticException -> 0x009a, ArithmeticException | IllegalArgumentException -> 0x009c, TRY_ENTER, TRY_LEAVE, TryCatch #14 {ArithmeticException | IllegalArgumentException -> 0x009c, blocks: (B:291:0x008d, B:40:0x00c4, B:46:0x0133, B:51:0x0143, B:59:0x0184, B:61:0x018c, B:64:0x0197, B:66:0x019f, B:69:0x01a8), top: B:290:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0133 A[Catch: ArithmeticException -> 0x009a, ArithmeticException | IllegalArgumentException -> 0x009c, TRY_ENTER, TRY_LEAVE, TryCatch #14 {ArithmeticException | IllegalArgumentException -> 0x009c, blocks: (B:291:0x008d, B:40:0x00c4, B:46:0x0133, B:51:0x0143, B:59:0x0184, B:61:0x018c, B:64:0x0197, B:66:0x019f, B:69:0x01a8), top: B:290:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0143 A[Catch: ArithmeticException -> 0x009a, ArithmeticException | IllegalArgumentException -> 0x009c, TRY_ENTER, TRY_LEAVE, TryCatch #14 {ArithmeticException | IllegalArgumentException -> 0x009c, blocks: (B:291:0x008d, B:40:0x00c4, B:46:0x0133, B:51:0x0143, B:59:0x0184, B:61:0x018c, B:64:0x0197, B:66:0x019f, B:69:0x01a8), top: B:290:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0184 A[Catch: ArithmeticException -> 0x009a, ArithmeticException | IllegalArgumentException -> 0x009c, TRY_ENTER, TryCatch #14 {ArithmeticException | IllegalArgumentException -> 0x009c, blocks: (B:291:0x008d, B:40:0x00c4, B:46:0x0133, B:51:0x0143, B:59:0x0184, B:61:0x018c, B:64:0x0197, B:66:0x019f, B:69:0x01a8), top: B:290:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x023c A[Catch: ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, TRY_ENTER, TryCatch #18 {ArithmeticException -> 0x0201, IllegalArgumentException -> 0x0203, blocks: (B:87:0x0215, B:92:0x023c, B:93:0x0258, B:95:0x025e, B:97:0x026e, B:99:0x027a, B:101:0x0288, B:102:0x028f, B:103:0x02a9, B:107:0x02b6, B:118:0x02e2, B:124:0x02f0, B:126:0x02fc, B:139:0x0335, B:145:0x0351, B:147:0x0358, B:154:0x037f, B:157:0x03ab, B:161:0x03b7, B:174:0x03f2, B:182:0x04ce, B:197:0x0518, B:200:0x0533, B:202:0x053a, B:206:0x055e, B:209:0x059b, B:211:0x05bc, B:217:0x05f6, B:221:0x060e, B:230:0x06a7, B:232:0x06c8), top: B:86:0x0215 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalEconomyEngine.Result apply(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        int i;
        Object obj;
        Object obj2;
        String str2;
        RuntimeException runtimeException;
        boolean z;
        boolean z2;
        byte[] doc;
        byte[] doc2;
        byte[] doc3;
        int m7v;
        LocalEconomyEngine.Result result;
        byte[] rule;
        int i2;
        int i3;
        ArrayList arrayList;
        Iterator<String> it;
        byte[] bArr3;
        int i4;
        String str3;
        LocalTutorialStore.Progress progress2;
        LocalEconomyEngine.Result result2;
        ArrayList arrayList2;
        boolean z3;
        boolean z4;
        List<Integer> intArrayValues;
        Iterator<Integer> it2;
        int i5;
        List<Integer> list;
        boolean z5;
        int[] iArr;
        String str4;
        int i6;
        String str5;
        int i7;
        byte[] withProfileInt;
        byte[] bArr4;
        Iterator it3;
        int[] iArr2;
        byte[] bArr5;
        int i8;
        Iterator<String> it4;
        Iterator<Integer> it5;
        byte[] bArr6;
        int i9;
        byte[] bArr7;
        String str6 = "bd";
        if ("playerDestroyBuilding".equals(str)) {
            return demolish(bArr, localConstructionCatalog, progress, bArr2);
        }
        LocalEconomyEngine.Result result3 = new LocalEconomyEngine.Result(bArr);
        boolean equals = "areaBuildRequest".equals(str);
        int m7v2 = m7v(bArr2, "aid");
        String str7 = equals ? "area_build_reply" : "area_level_up_reply";
        try {
            obj2 = "aid";
            try {
                require(handles(str), "未知城市操作");
            } catch (ArithmeticException | IllegalArgumentException e) {
                e = e;
                i = m7v2;
                obj = "rs";
            }
        } catch (ArithmeticException | IllegalArgumentException e2) {
            e = e2;
            i = m7v2;
            obj = "rs";
            obj2 = "aid";
        }
        try {
            if (progress != null && m7v2 >= 1 && m7v2 <= 8) {
                try {
                    if (!progress.inEmergency && !LocalChapterCityEngine.locked(bArr, m7v2)) {
                        if (LocalCityProgress.status(progress, m7v2, bArr) == 0) {
                            z = true;
                            require(z, "该地区尚未解放，无法建设或开发");
                            obj = "rs";
                            if (!progress.finishedNewbees.contains(20)) {
                                if (equals) {
                                    try {
                                    } catch (ArithmeticException | IllegalArgumentException e3) {
                                        runtimeException = e3;
                                        i = m7v2;
                                        str2 = str7;
                                        LocalEconomyEngine.Result result4 = new LocalEconomyEngine.Result(bArr);
                                        result4.reason = runtimeException.getMessage();
                                        result4.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result4.reason)));
                                        result4.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                        return result4;
                                    }
                                }
                                z2 = false;
                                require(z2, "请先完成建设指引");
                                require(m7v(doc(bArr, "weeknum"), "d") < 7, "最后一天无法建设或开发");
                                require(progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty(), "请先完成当前战斗或巡查");
                                require(progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情");
                                result3.profile = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
                                doc = doc(result3.profile, "city");
                                doc2 = doc(doc, "areas");
                                byte[] doc4 = doc(doc2, "area_" + m7v2);
                                doc3 = doc(doc4, "bd");
                                int m7v3 = m7v(doc4, "lv");
                                m7v = m7v(bArr2, "fi");
                                int m7v4 = m7v(bArr2, "bi");
                                require(m7v3 < 1 && localConstructionCatalog.slots(m7v2, m7v3) > 0, "地区开发数据无效");
                                if (equals) {
                                    rule = localConstructionCatalog.rule("B", Integer.valueOf(m7v4));
                                    result = result3;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(m7v2);
                                    result = result3;
                                    sb.append(":");
                                    sb.append(m7v3 + 1);
                                    rule = localConstructionCatalog.rule("U", sb.toString());
                                }
                                require(!BsonLite.keys(rule).isEmpty(), equals ? "无效建筑" : "该地区已开发到最高等级");
                                if (equals) {
                                    require(m7v(rule, "ban") == 0 && m7v(rule, "clientBan") == 0, "此建筑不能手动建设");
                                    require(m7v >= 1 && m7v <= localConstructionCatalog.slots(m7v2, m7v3), "该建筑空位尚未解锁");
                                    require(BsonLite.keys(doc(doc3, Integer.toString(m7v))).isEmpty(), "该空位已有建筑");
                                    validateBuilding(localConstructionCatalog, doc, doc4, m7v4, rule);
                                } else {
                                    require(m7v(bArr2, "luv") == 1, "每次只能开发一级");
                                }
                                int m7v5 = m7v(rule, equals ? "ac" : "action_consume");
                                int m7v6 = m7v(rule, equals ? "mc" : "money_consume");
                                i = m7v2;
                                int m7v7 = m7v(rule, equals ? "fc" : "fatigue");
                                int m7v8 = m7v(rule, equals ? "cr" : "lead_require");
                                if (equals) {
                                    i2 = m7v8;
                                    try {
                                        i3 = m7v(rule, "research_require");
                                    } catch (ArithmeticException e4) {
                                        e = e4;
                                        runtimeException = e;
                                        str2 = str7;
                                        LocalEconomyEngine.Result result42 = new LocalEconomyEngine.Result(bArr);
                                        result42.reason = runtimeException.getMessage();
                                        result42.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result42.reason)));
                                        result42.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                        return result42;
                                    } catch (IllegalArgumentException e5) {
                                        e = e5;
                                        runtimeException = e;
                                        str2 = str7;
                                        LocalEconomyEngine.Result result422 = new LocalEconomyEngine.Result(bArr);
                                        result422.reason = runtimeException.getMessage();
                                        result422.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result422.reason)));
                                        result422.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                        return result422;
                                    }
                                } else {
                                    i2 = m7v8;
                                    i3 = 0;
                                }
                                arrayList = new ArrayList();
                                it = BsonLite.keys(doc2).iterator();
                                int i10 = i2;
                                while (true) {
                                    bArr3 = doc3;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    int i11 = m7v;
                                    byte[] doc5 = doc(doc2, it.next());
                                    byte[] bArr8 = doc2;
                                    byte[] doc6 = doc(doc5, str6);
                                    for (String str8 : BsonLite.keys(doc6)) {
                                        String str9 = str6;
                                        byte[] doc7 = doc(doc6, str8);
                                        if (equals) {
                                            bArr7 = doc6;
                                            i9 = m7v7;
                                            if (m7v(doc7, "id") == 20) {
                                                if (!Boolean.TRUE.equals(BsonLite.boolValue(doc7, "u"))) {
                                                    i3 = Math.max(0, i3 - 25);
                                                }
                                                arrayList.add(new int[]{m7v(doc5, "id"), Integer.parseInt(str8)});
                                            }
                                        } else {
                                            i9 = m7v7;
                                            bArr7 = doc6;
                                        }
                                        if (m7v(doc7, "id") == (equals ? 28 : 27)) {
                                            i10 = Math.max(0, i10 - 3);
                                        }
                                        doc6 = bArr7;
                                        str6 = str9;
                                        m7v7 = i9;
                                    }
                                    doc2 = bArr8;
                                    doc3 = bArr3;
                                    m7v = i11;
                                }
                                i4 = m7v7;
                                int i12 = m7v;
                                byte[] bArr9 = doc2;
                                String str10 = str6;
                                str3 = "uda";
                                if (equals || m7v(doc, "rv") >= i3 || m7v4 < 34 || m7v4 > 38) {
                                    progress2 = progress;
                                    result2 = result;
                                    arrayList2 = arrayList;
                                } else {
                                    result2 = result;
                                    progress2 = progress;
                                    if (LocalDalviraStoryEngine.active(result2.profile, progress2)) {
                                        arrayList2 = arrayList;
                                        if (!Boolean.TRUE.equals(BsonLite.boolValue(doc, "uda"))) {
                                            z3 = true;
                                            if (m7v(doc, "rv") < i3 && !z3) {
                                                z4 = false;
                                                require(z4, "城市科技值不足");
                                                require(m7v5 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v5 && m7v6 >= 0 && m7v(doc, "bf") >= m7v6, "行动力或建设资金不足");
                                                intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                                                require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                                                it2 = intArrayValues.iterator();
                                                i5 = 0;
                                                while (true) {
                                                    list = intArrayValues;
                                                    if (it2.hasNext()) {
                                                        break;
                                                    }
                                                    Iterator<Integer> it6 = it2;
                                                    int intValue = it2.next().intValue();
                                                    String str11 = str3;
                                                    byte[] profileHeroDocument = BsonLite.profileHeroDocument(result2.profile, intValue);
                                                    boolean z6 = z3;
                                                    require(LocalResourceEngine.ownsHero(result2.profile, intValue), "未拥有选中的神器使");
                                                    int i13 = i4;
                                                    require(m7v(profileHeroDocument, "cf") >= i13, "神器使疲劳值不足");
                                                    i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                                    intArrayValues = list;
                                                    i4 = i13;
                                                    str3 = str11;
                                                    it2 = it6;
                                                    z3 = z6;
                                                }
                                                LocalConstructionCatalog localConstructionCatalog2 = localConstructionCatalog;
                                                String str12 = str3;
                                                z5 = z3;
                                                int i14 = i4;
                                                require(i5 < i10, !equals ? "神器使建设力不足" : "神器使开发力不足");
                                                byte[] bArr10 = bArr9;
                                                iArr = totals(localConstructionCatalog2, bArr10, result2.profile);
                                                if (equals) {
                                                    str4 = "cf";
                                                    i6 = i14;
                                                    str5 = str10;
                                                    int i15 = m7v3 + 1;
                                                    byte[] withProfileInt2 = BsonLite.withProfileInt(doc4, "lv", i15);
                                                    i7 = i;
                                                    try {
                                                        byte[] withProfileInt3 = BsonLite.withProfileInt(withProfileInt2, "mbn", localConstructionCatalog2.slots(i7, i15));
                                                        withProfileInt = BsonLite.withProfileInt(doc, "tvn", Math.addExact(m7v(doc, "tvn"), 1));
                                                        bArr4 = withProfileInt3;
                                                    } catch (ArithmeticException | IllegalArgumentException e6) {
                                                        e = e6;
                                                        i = i7;
                                                        str2 = str7;
                                                        runtimeException = e;
                                                        LocalEconomyEngine.Result result4222 = new LocalEconomyEngine.Result(bArr);
                                                        result4222.reason = runtimeException.getMessage();
                                                        result4222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result4222.reason)));
                                                        result4222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                                        return result4222;
                                                    }
                                                } else {
                                                    str4 = "cf";
                                                    i6 = i14;
                                                    str5 = str10;
                                                    byte[] withProfileDocument = BsonLite.withProfileDocument(doc4, str5, BsonLite.withProfileDocument(bArr3, Integer.toString(i12), BsonLite.document("id", Integer.valueOf(m7v4), "uuid", LocalResourceEngine.uuid())));
                                                    bArr4 = BsonLite.withProfileDocument(withProfileDocument, "dbd", BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), Integer.toString(i12)));
                                                    withProfileInt = BsonLite.withProfileBool(BsonLite.withProfileInt(doc, "tbn", Math.addExact(m7v(doc, "tbn"), 1)), "nbb", false);
                                                    i7 = i;
                                                }
                                                StringBuilder sb2 = new StringBuilder();
                                                String str13 = "area_";
                                                sb2.append(str13);
                                                sb2.append(i7);
                                                byte[] withProfileDocument2 = BsonLite.withProfileDocument(bArr10, sb2.toString(), bArr4);
                                                it3 = arrayList2.iterator();
                                                while (it3.hasNext()) {
                                                    try {
                                                        int[] iArr3 = (int[]) it3.next();
                                                        byte[] bArr11 = withProfileInt;
                                                        StringBuilder sb3 = new StringBuilder();
                                                        sb3.append(str13);
                                                        Iterator it7 = it3;
                                                        sb3.append(iArr3[0]);
                                                        String sb4 = sb3.toString();
                                                        String num = Integer.toString(iArr3[1]);
                                                        String str14 = str13;
                                                        byte[] doc8 = doc(withProfileDocument2, sb4);
                                                        int i16 = i7;
                                                        byte[] withProfileDocument3 = BsonLite.withProfileDocument(doc8, str5, BsonLite.withoutProfileKey(doc(doc8, str5), num));
                                                        String str15 = str5;
                                                        withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument2, sb4, BsonLite.withProfileDocument(withProfileDocument3, "dbd", BsonLite.withProfileInt(doc(withProfileDocument3, "dbd"), num, 20)));
                                                        str13 = str14;
                                                        withProfileInt = bArr11;
                                                        it3 = it7;
                                                        i7 = i16;
                                                        str5 = str15;
                                                    } catch (ArithmeticException | IllegalArgumentException e7) {
                                                        e = e7;
                                                        i = i7;
                                                        runtimeException = e;
                                                        str2 = str7;
                                                        LocalEconomyEngine.Result result42222 = new LocalEconomyEngine.Result(bArr);
                                                        result42222.reason = runtimeException.getMessage();
                                                        result42222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result42222.reason)));
                                                        result42222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                                        return result42222;
                                                    }
                                                }
                                                byte[] bArr12 = withProfileInt;
                                                i = i7;
                                                iArr2 = totals(localConstructionCatalog2, withProfileDocument2, result2.profile);
                                                String[] strArr = {"fv", "rv", "dv"};
                                                bArr5 = bArr12;
                                                for (i8 = 0; i8 < 3; i8++) {
                                                    bArr5 = BsonLite.withProfileInt(bArr5, strArr[i8], Math.addExact(m7v(bArr5, strArr[i8]), iArr2[i8] - iArr[i8]));
                                                }
                                                if (equals && iArr2[2] > iArr[2]) {
                                                    bArr5 = BsonLite.withProfileInt(bArr5, "dvc", Math.addExact(m7v(bArr5, "dvc"), iArr2[2] - iArr[2]));
                                                }
                                                it4 = BsonLite.keys(withProfileDocument2).iterator();
                                                while (it4.hasNext()) {
                                                    String next = it4.next();
                                                    byte[] doc9 = doc(withProfileDocument2, next);
                                                    int[] iArr4 = totals(localConstructionCatalog2, BsonLite.document(next, doc(bArr10, next)), result2.profile);
                                                    Iterator<String> it8 = it4;
                                                    int[] iArr5 = totals(localConstructionCatalog2, BsonLite.document(next, doc9), result2.profile);
                                                    int i17 = 0;
                                                    while (true) {
                                                        bArr6 = bArr10;
                                                        if (i17 >= 3) {
                                                            break;
                                                        }
                                                        doc9 = BsonLite.withProfileInt(doc9, strArr[i17], Math.addExact(m7v(doc9, strArr[i17]), iArr5[i17] - iArr4[i17]));
                                                        i17++;
                                                        bArr10 = bArr6;
                                                        iArr5 = iArr5;
                                                    }
                                                    withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument2, next, doc9);
                                                    localConstructionCatalog2 = localConstructionCatalog;
                                                    it4 = it8;
                                                    bArr10 = bArr6;
                                                }
                                                result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
                                                byte[] withProfileDocument4 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v6), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument2);
                                                if (z5) {
                                                    withProfileDocument4 = BsonLite.withProfileBool(withProfileDocument4, str12, true);
                                                }
                                                result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument4);
                                                it5 = list.iterator();
                                                while (it5.hasNext()) {
                                                    int intValue2 = it5.next().intValue();
                                                    byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(result2.profile, intValue2);
                                                    String str16 = str4;
                                                    int m7v9 = m7v(profileHeroDocument2, str16) - i6;
                                                    result2.fatigue.put(Integer.valueOf(intValue2), Integer.valueOf(m7v9));
                                                    result2.profile = BsonLite.withHeroDocument(result2.profile, intValue2, BsonLite.withProfileInt(profileHeroDocument2, str16, m7v9));
                                                    result2.replies.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(intValue2, m7v9)));
                                                    str4 = str16;
                                                }
                                                LocalEconomyEngine.spendActions(result2, progress, m7v5);
                                                result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
                                                byte[] doc10 = doc(result2.profile, "city");
                                                LocalEconomyEngine.commit(result2, 0);
                                                result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc10)));
                                                result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc10)));
                                                if (z5) {
                                                    result2.replies.add(new LocalResourceEngine.Reply("syncDaerweilaAbility", BsonLite.document("u", true)));
                                                }
                                                str2 = str7;
                                                result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                                                result2.accepted = true;
                                                return result2;
                                            }
                                            z4 = true;
                                            require(z4, "城市科技值不足");
                                            require(m7v5 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v5 && m7v6 >= 0 && m7v(doc, "bf") >= m7v6, "行动力或建设资金不足");
                                            intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                                            require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                                            it2 = intArrayValues.iterator();
                                            i5 = 0;
                                            while (true) {
                                                list = intArrayValues;
                                                if (it2.hasNext()) {
                                                }
                                                i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                                intArrayValues = list;
                                                i4 = i13;
                                                str3 = str11;
                                                it2 = it6;
                                                z3 = z6;
                                            }
                                            LocalConstructionCatalog localConstructionCatalog22 = localConstructionCatalog;
                                            String str122 = str3;
                                            z5 = z3;
                                            int i142 = i4;
                                            require(i5 < i10, !equals ? "神器使建设力不足" : "神器使开发力不足");
                                            byte[] bArr102 = bArr9;
                                            iArr = totals(localConstructionCatalog22, bArr102, result2.profile);
                                            if (equals) {
                                            }
                                            StringBuilder sb22 = new StringBuilder();
                                            String str132 = "area_";
                                            sb22.append(str132);
                                            sb22.append(i7);
                                            byte[] withProfileDocument22 = BsonLite.withProfileDocument(bArr102, sb22.toString(), bArr4);
                                            it3 = arrayList2.iterator();
                                            while (it3.hasNext()) {
                                            }
                                            byte[] bArr122 = withProfileInt;
                                            i = i7;
                                            iArr2 = totals(localConstructionCatalog22, withProfileDocument22, result2.profile);
                                            String[] strArr2 = {"fv", "rv", "dv"};
                                            bArr5 = bArr122;
                                            while (i8 < 3) {
                                            }
                                            if (equals) {
                                                bArr5 = BsonLite.withProfileInt(bArr5, "dvc", Math.addExact(m7v(bArr5, "dvc"), iArr2[2] - iArr[2]));
                                            }
                                            it4 = BsonLite.keys(withProfileDocument22).iterator();
                                            while (it4.hasNext()) {
                                            }
                                            result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
                                            byte[] withProfileDocument42 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v6), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument22);
                                            if (z5) {
                                            }
                                            result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument42);
                                            it5 = list.iterator();
                                            while (it5.hasNext()) {
                                            }
                                            LocalEconomyEngine.spendActions(result2, progress, m7v5);
                                            result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
                                            byte[] doc102 = doc(result2.profile, "city");
                                            LocalEconomyEngine.commit(result2, 0);
                                            result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc102)));
                                            result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc102)));
                                            if (z5) {
                                            }
                                            str2 = str7;
                                            result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                                            result2.accepted = true;
                                            return result2;
                                        }
                                    } else {
                                        arrayList2 = arrayList;
                                    }
                                }
                                z3 = false;
                                if (m7v(doc, "rv") < i3) {
                                    z4 = false;
                                    require(z4, "城市科技值不足");
                                    require(m7v5 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v5 && m7v6 >= 0 && m7v(doc, "bf") >= m7v6, "行动力或建设资金不足");
                                    intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                                    require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                                    it2 = intArrayValues.iterator();
                                    i5 = 0;
                                    while (true) {
                                        list = intArrayValues;
                                        if (it2.hasNext()) {
                                        }
                                        i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                        intArrayValues = list;
                                        i4 = i13;
                                        str3 = str11;
                                        it2 = it6;
                                        z3 = z6;
                                    }
                                    LocalConstructionCatalog localConstructionCatalog222 = localConstructionCatalog;
                                    String str1222 = str3;
                                    z5 = z3;
                                    int i1422 = i4;
                                    require(i5 < i10, !equals ? "神器使建设力不足" : "神器使开发力不足");
                                    byte[] bArr1022 = bArr9;
                                    iArr = totals(localConstructionCatalog222, bArr1022, result2.profile);
                                    if (equals) {
                                    }
                                    StringBuilder sb222 = new StringBuilder();
                                    String str1322 = "area_";
                                    sb222.append(str1322);
                                    sb222.append(i7);
                                    byte[] withProfileDocument222 = BsonLite.withProfileDocument(bArr1022, sb222.toString(), bArr4);
                                    it3 = arrayList2.iterator();
                                    while (it3.hasNext()) {
                                    }
                                    byte[] bArr1222 = withProfileInt;
                                    i = i7;
                                    iArr2 = totals(localConstructionCatalog222, withProfileDocument222, result2.profile);
                                    String[] strArr22 = {"fv", "rv", "dv"};
                                    bArr5 = bArr1222;
                                    while (i8 < 3) {
                                    }
                                    if (equals) {
                                    }
                                    it4 = BsonLite.keys(withProfileDocument222).iterator();
                                    while (it4.hasNext()) {
                                    }
                                    result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
                                    byte[] withProfileDocument422 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v6), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument222);
                                    if (z5) {
                                    }
                                    result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument422);
                                    it5 = list.iterator();
                                    while (it5.hasNext()) {
                                    }
                                    LocalEconomyEngine.spendActions(result2, progress, m7v5);
                                    result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
                                    byte[] doc1022 = doc(result2.profile, "city");
                                    LocalEconomyEngine.commit(result2, 0);
                                    result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc1022)));
                                    result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc1022)));
                                    if (z5) {
                                    }
                                    str2 = str7;
                                    result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                                    result2.accepted = true;
                                    return result2;
                                }
                                z4 = true;
                                require(z4, "城市科技值不足");
                                require(m7v5 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v5 && m7v6 >= 0 && m7v(doc, "bf") >= m7v6, "行动力或建设资金不足");
                                intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                                require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                                it2 = intArrayValues.iterator();
                                i5 = 0;
                                while (true) {
                                    list = intArrayValues;
                                    if (it2.hasNext()) {
                                    }
                                    i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                    intArrayValues = list;
                                    i4 = i13;
                                    str3 = str11;
                                    it2 = it6;
                                    z3 = z6;
                                }
                                LocalConstructionCatalog localConstructionCatalog2222 = localConstructionCatalog;
                                String str12222 = str3;
                                z5 = z3;
                                int i14222 = i4;
                                require(i5 < i10, !equals ? "神器使建设力不足" : "神器使开发力不足");
                                byte[] bArr10222 = bArr9;
                                iArr = totals(localConstructionCatalog2222, bArr10222, result2.profile);
                                if (equals) {
                                }
                                StringBuilder sb2222 = new StringBuilder();
                                String str13222 = "area_";
                                sb2222.append(str13222);
                                sb2222.append(i7);
                                byte[] withProfileDocument2222 = BsonLite.withProfileDocument(bArr10222, sb2222.toString(), bArr4);
                                it3 = arrayList2.iterator();
                                while (it3.hasNext()) {
                                }
                                byte[] bArr12222 = withProfileInt;
                                i = i7;
                                iArr2 = totals(localConstructionCatalog2222, withProfileDocument2222, result2.profile);
                                String[] strArr222 = {"fv", "rv", "dv"};
                                bArr5 = bArr12222;
                                while (i8 < 3) {
                                }
                                if (equals) {
                                }
                                it4 = BsonLite.keys(withProfileDocument2222).iterator();
                                while (it4.hasNext()) {
                                }
                                result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
                                byte[] withProfileDocument4222 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v6), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument2222);
                                if (z5) {
                                }
                                result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument4222);
                                it5 = list.iterator();
                                while (it5.hasNext()) {
                                }
                                LocalEconomyEngine.spendActions(result2, progress, m7v5);
                                result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
                                byte[] doc10222 = doc(result2.profile, "city");
                                LocalEconomyEngine.commit(result2, 0);
                                result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc10222)));
                                result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc10222)));
                                if (z5) {
                                }
                                str2 = str7;
                                result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                                result2.accepted = true;
                                return result2;
                            }
                            z2 = true;
                            require(z2, "请先完成建设指引");
                            require(m7v(doc(bArr, "weeknum"), "d") < 7, "最后一天无法建设或开发");
                            require(progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty(), "请先完成当前战斗或巡查");
                            require(progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情");
                            result3.profile = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
                            doc = doc(result3.profile, "city");
                            doc2 = doc(doc, "areas");
                            byte[] doc42 = doc(doc2, "area_" + m7v2);
                            doc3 = doc(doc42, "bd");
                            int m7v32 = m7v(doc42, "lv");
                            m7v = m7v(bArr2, "fi");
                            int m7v42 = m7v(bArr2, "bi");
                            require(m7v32 < 1 && localConstructionCatalog.slots(m7v2, m7v32) > 0, "地区开发数据无效");
                            if (equals) {
                            }
                            require(!BsonLite.keys(rule).isEmpty(), equals ? "无效建筑" : "该地区已开发到最高等级");
                            if (equals) {
                            }
                            int m7v52 = m7v(rule, equals ? "ac" : "action_consume");
                            int m7v62 = m7v(rule, equals ? "mc" : "money_consume");
                            i = m7v2;
                            int m7v72 = m7v(rule, equals ? "fc" : "fatigue");
                            int m7v82 = m7v(rule, equals ? "cr" : "lead_require");
                            if (equals) {
                            }
                            arrayList = new ArrayList();
                            it = BsonLite.keys(doc2).iterator();
                            int i102 = i2;
                            while (true) {
                                bArr3 = doc3;
                                if (!it.hasNext()) {
                                }
                                doc2 = bArr8;
                                doc3 = bArr3;
                                m7v = i11;
                            }
                            i4 = m7v72;
                            int i122 = m7v;
                            byte[] bArr92 = doc2;
                            String str102 = str6;
                            str3 = "uda";
                            if (equals) {
                            }
                            progress2 = progress;
                            result2 = result;
                            arrayList2 = arrayList;
                            z3 = false;
                            if (m7v(doc, "rv") < i3) {
                            }
                            z4 = true;
                            require(z4, "城市科技值不足");
                            require(m7v52 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v52 && m7v62 >= 0 && m7v(doc, "bf") >= m7v62, "行动力或建设资金不足");
                            intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                            require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                            it2 = intArrayValues.iterator();
                            i5 = 0;
                            while (true) {
                                list = intArrayValues;
                                if (it2.hasNext()) {
                                }
                                i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                intArrayValues = list;
                                i4 = i13;
                                str3 = str11;
                                it2 = it6;
                                z3 = z6;
                            }
                            LocalConstructionCatalog localConstructionCatalog22222 = localConstructionCatalog;
                            String str122222 = str3;
                            z5 = z3;
                            int i142222 = i4;
                            require(i5 < i102, !equals ? "神器使建设力不足" : "神器使开发力不足");
                            byte[] bArr102222 = bArr92;
                            iArr = totals(localConstructionCatalog22222, bArr102222, result2.profile);
                            if (equals) {
                            }
                            StringBuilder sb22222 = new StringBuilder();
                            String str132222 = "area_";
                            sb22222.append(str132222);
                            sb22222.append(i7);
                            byte[] withProfileDocument22222 = BsonLite.withProfileDocument(bArr102222, sb22222.toString(), bArr4);
                            it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                            }
                            byte[] bArr122222 = withProfileInt;
                            i = i7;
                            iArr2 = totals(localConstructionCatalog22222, withProfileDocument22222, result2.profile);
                            String[] strArr2222 = {"fv", "rv", "dv"};
                            bArr5 = bArr122222;
                            while (i8 < 3) {
                            }
                            if (equals) {
                            }
                            it4 = BsonLite.keys(withProfileDocument22222).iterator();
                            while (it4.hasNext()) {
                            }
                            result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
                            byte[] withProfileDocument42222 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v62), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument22222);
                            if (z5) {
                            }
                            result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument42222);
                            it5 = list.iterator();
                            while (it5.hasNext()) {
                            }
                            LocalEconomyEngine.spendActions(result2, progress, m7v52);
                            result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
                            byte[] doc102222 = doc(result2.profile, "city");
                            LocalEconomyEngine.commit(result2, 0);
                            result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc102222)));
                            result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc102222)));
                            if (z5) {
                            }
                            str2 = str7;
                            result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                            result2.accepted = true;
                            return result2;
                        }
                    }
                } catch (ArithmeticException | IllegalArgumentException e8) {
                    runtimeException = e8;
                    i = m7v2;
                    obj = "rs";
                    str2 = str7;
                    LocalEconomyEngine.Result result422222 = new LocalEconomyEngine.Result(bArr);
                    result422222.reason = runtimeException.getMessage();
                    result422222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result422222.reason)));
                    result422222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                    return result422222;
                }
            }
            result2.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, obj2, Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
            result2.accepted = true;
            return result2;
        } catch (ArithmeticException e9) {
            e = e9;
            runtimeException = e;
            LocalEconomyEngine.Result result4222222 = new LocalEconomyEngine.Result(bArr);
            result4222222.reason = runtimeException.getMessage();
            result4222222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result4222222.reason)));
            result4222222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
            return result4222222;
        } catch (IllegalArgumentException e10) {
            e = e10;
            runtimeException = e;
            LocalEconomyEngine.Result result42222222 = new LocalEconomyEngine.Result(bArr);
            result42222222.reason = runtimeException.getMessage();
            result42222222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result42222222.reason)));
            result42222222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, obj2, Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
            return result42222222;
        }
        z = false;
        require(z, "该地区尚未解放，无法建设或开发");
        obj = "rs";
        if (!progress.finishedNewbees.contains(20)) {
        }
        z2 = true;
        require(z2, "请先完成建设指引");
        require(m7v(doc(bArr, "weeknum"), "d") < 7, "最后一天无法建设或开发");
        require(progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty(), "请先完成当前战斗或巡查");
        require(progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情");
        result3.profile = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
        doc = doc(result3.profile, "city");
        doc2 = doc(doc, "areas");
        byte[] doc422 = doc(doc2, "area_" + m7v2);
        doc3 = doc(doc422, "bd");
        int m7v322 = m7v(doc422, "lv");
        m7v = m7v(bArr2, "fi");
        int m7v422 = m7v(bArr2, "bi");
        require(m7v322 < 1 && localConstructionCatalog.slots(m7v2, m7v322) > 0, "地区开发数据无效");
        if (equals) {
        }
        require(!BsonLite.keys(rule).isEmpty(), equals ? "无效建筑" : "该地区已开发到最高等级");
        if (equals) {
        }
        int m7v522 = m7v(rule, equals ? "ac" : "action_consume");
        int m7v622 = m7v(rule, equals ? "mc" : "money_consume");
        i = m7v2;
        int m7v722 = m7v(rule, equals ? "fc" : "fatigue");
        int m7v822 = m7v(rule, equals ? "cr" : "lead_require");
        if (equals) {
        }
        arrayList = new ArrayList();
        it = BsonLite.keys(doc2).iterator();
        int i1022 = i2;
        while (true) {
            bArr3 = doc3;
            if (!it.hasNext()) {
            }
            doc2 = bArr8;
            doc3 = bArr3;
            m7v = i11;
        }
        i4 = m7v722;
        int i1222 = m7v;
        byte[] bArr922 = doc2;
        String str1022 = str6;
        str3 = "uda";
        if (equals) {
        }
        progress2 = progress;
        result2 = result;
        arrayList2 = arrayList;
        z3 = false;
        if (m7v(doc, "rv") < i3) {
        }
        z4 = true;
        require(z4, "城市科技值不足");
        require(m7v522 < 0 && LocalEconomyEngine.actions(result2.profile, progress2) >= m7v522 && m7v622 >= 0 && m7v(doc, "bf") >= m7v622, "行动力或建设资金不足");
        intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
        require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
        it2 = intArrayValues.iterator();
        i5 = 0;
        while (true) {
            list = intArrayValues;
            if (it2.hasNext()) {
            }
            i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
            intArrayValues = list;
            i4 = i13;
            str3 = str11;
            it2 = it6;
            z3 = z6;
        }
        LocalConstructionCatalog localConstructionCatalog222222 = localConstructionCatalog;
        String str1222222 = str3;
        z5 = z3;
        int i1422222 = i4;
        require(i5 < i1022, !equals ? "神器使建设力不足" : "神器使开发力不足");
        byte[] bArr1022222 = bArr922;
        iArr = totals(localConstructionCatalog222222, bArr1022222, result2.profile);
        if (equals) {
        }
        StringBuilder sb222222 = new StringBuilder();
        String str1322222 = "area_";
        sb222222.append(str1322222);
        sb222222.append(i7);
        byte[] withProfileDocument222222 = BsonLite.withProfileDocument(bArr1022222, sb222222.toString(), bArr4);
        it3 = arrayList2.iterator();
        while (it3.hasNext()) {
        }
        byte[] bArr1222222 = withProfileInt;
        i = i7;
        iArr2 = totals(localConstructionCatalog222222, withProfileDocument222222, result2.profile);
        String[] strArr22222 = {"fv", "rv", "dv"};
        bArr5 = bArr1222222;
        while (i8 < 3) {
        }
        if (equals) {
        }
        it4 = BsonLite.keys(withProfileDocument222222).iterator();
        while (it4.hasNext()) {
        }
        result2.profile = BsonLite.withProfileInt(result2.profile, "q7DailyBuildIncome", iArr2[3]);
        byte[] withProfileDocument422222 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m7v(bArr5, "bf") - m7v622), "av", LocalEconomyEngine.regularActions(result2.profile, progress)), "areas", withProfileDocument222222);
        if (z5) {
        }
        result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileDocument422222);
        it5 = list.iterator();
        while (it5.hasNext()) {
        }
        LocalEconomyEngine.spendActions(result2, progress, m7v522);
        result2.profile = LocalNewAchievementEngine.add(result2.profile, !equals ? 27 : 28, 1);
        byte[] doc1022222 = doc(result2.profile, "city");
        LocalEconomyEngine.commit(result2, 0);
        result2.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result2.profile), "cd", doc1022222)));
        result2.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc1022222)));
        if (z5) {
        }
        str2 = str7;
    }

    static /* synthetic */ boolean lambda$apply$0(Integer num) {
        return num.intValue() == 9;
    }

    private static int count(byte[] bArr, int i) {
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (m7v(doc(bArr, it.next()), "id") == i) {
                i2++;
            }
        }
        return i2;
    }

    static byte[] refreshGuideState(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] repairDestroyedSlots = repairDestroyedSlots(bArr);
        byte[] doc = doc(repairDestroyedSlots, "city");
        boolean z = false;
        boolean z2 = m7v(doc, "tbn") > 0 || (progress != null && (progress.finishedNewbees.contains(20) || progress.finishedNewbees.contains(27)));
        Boolean boolValue = BsonLite.boolValue(doc, "nbb");
        if (!z2 && !Boolean.FALSE.equals(boolValue)) {
            z = true;
        }
        return (boolValue == null || boolValue.booleanValue() != z) ? BsonLite.withProfileDocument(repairDestroyedSlots, "city", BsonLite.withProfileBool(doc, "nbb", z)) : repairDestroyedSlots;
    }

    static byte[] acknowledgeDestroyed(byte[] bArr, byte[] bArr2) {
        int m7v = m7v(bArr2, "aid");
        int m7v2 = m7v(bArr2, "fi");
        int m7v3 = m7v(bArr2, "bi");
        if (m7v < 1 || m7v > 8 || m7v2 < 1 || m7v3 < 1) {
            return bArr;
        }
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        String str = "area_" + m7v;
        String num = Integer.toString(m7v2);
        byte[] doc3 = doc(doc2, str);
        byte[] doc4 = doc(doc3, "dbd");
        return m7v(doc4, num) != m7v3 ? bArr : BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", BsonLite.withProfileDocument(doc2, str, BsonLite.withProfileDocument(doc3, "dbd", BsonLite.withoutProfileKey(doc4, num)))));
    }

    static byte[] repairDestroyedSlots(byte[] bArr) {
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        Iterator<String> it = BsonLite.keys(doc2).iterator();
        byte[] bArr2 = doc2;
        while (it.hasNext()) {
            String next = it.next();
            byte[] doc3 = doc(doc2, next);
            byte[] doc4 = doc(doc3, "bd");
            byte[] doc5 = doc(doc3, "dbd");
            byte[] bArr3 = doc5;
            for (String str : BsonLite.keys(doc5)) {
                Iterator<String> it2 = it;
                if (m7v(doc(doc4, str), "id") > 0) {
                    bArr3 = BsonLite.withoutProfileKey(bArr3, str);
                }
                it = it2;
            }
            Iterator<String> it3 = it;
            if (!Arrays.equals(doc5, bArr3)) {
                bArr2 = BsonLite.withProfileDocument(bArr2, next, BsonLite.withProfileDocument(doc3, "dbd", bArr3));
            }
            it = it3;
        }
        if (Arrays.equals(doc2, bArr2)) {
            return bArr;
        }
        return BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", bArr2));
    }

    static byte[] repairIncome(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress) {
        byte[] doc = doc(bArr, "city");
        int i = totals(localConstructionCatalog, doc(doc(BsonLite.withLocalCityState(bArr, progress), "city"), "areas"), bArr)[3];
        if (BsonLite.intValue(bArr, "q7DailyBuildIncome") == null && m7v(doc, "tbn") > 0 && m7v(doc, "dvc") == i && i > m7v(doc, "dv")) {
            bArr = BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileInt(doc, "dvc", 0));
        }
        return BsonLite.withProfileInt(bArr, "q7DailyBuildIncome", i);
    }

    static byte[] restoreCentralBase(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress) {
        if (progress == null || progress.inEmergency || LocalCityProgress.status(progress, 1) != 0 || Boolean.TRUE.equals(BsonLite.boolValue(bArr, "q7CentralBase"))) {
            return bArr;
        }
        byte[] withLocalCityState = BsonLite.withLocalCityState(bArr, progress);
        byte[] doc = doc(withLocalCityState, "city");
        if (countCity(doc, 1) > 0) {
            return bArr;
        }
        byte[] doc2 = doc(doc, "areas");
        byte[] doc3 = doc(doc2, "area_1");
        byte[] doc4 = doc(doc3, "bd");
        int i = 1;
        while (true) {
            if (i > localConstructionCatalog.slots(1, m7v(doc3, "lv"))) {
                i = 0;
                break;
            }
            if (BsonLite.keys(doc(doc4, Integer.toString(i))).isEmpty()) {
                break;
            }
            i++;
        }
        if (i == 0) {
            return bArr;
        }
        byte[] rule = localConstructionCatalog.rule("B", 1);
        require(m7v(rule, "clientBan") == 1 && m7v(rule, "can_remove") == 0 && m7v(rule, "ml") == 1, "原中央庭基地配置不完整");
        int[] iArr = totals(localConstructionCatalog, doc2, withLocalCityState);
        byte[] withProfileDocument = BsonLite.withProfileDocument(doc3, "bd", BsonLite.withProfileDocument(doc4, Integer.toString(i), BsonLite.document("id", 1, "uuid", LocalResourceEngine.uuid())));
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument, "dbd", BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), Integer.toString(i)));
        byte[] withProfileDocument3 = BsonLite.withProfileDocument(doc2, "area_1", withProfileDocument2);
        int[] iArr2 = totals(localConstructionCatalog, withProfileDocument3, withLocalCityState);
        String[] strArr = {"fv", "rv", "dv"};
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr2[i2] - iArr[i2];
            doc = BsonLite.withProfileInt(doc, strArr[i2], Math.addExact(m7v(doc, strArr[i2]), i3));
            withProfileDocument2 = BsonLite.withProfileInt(withProfileDocument2, strArr[i2], Math.addExact(m7v(withProfileDocument2, strArr[i2]), i3));
        }
        return BsonLite.withProfileBool(BsonLite.withProfileDocument(withLocalCityState, "city", BsonLite.withProfileDocument(BsonLite.withProfileInt(doc, "dvc", Math.addExact(m7v(doc, "dvc"), iArr2[2] - iArr[2])), "areas", BsonLite.withProfileDocument(withProfileDocument3, "area_1", withProfileDocument2))), "q7CentralBase", true);
    }

    static byte[] destroyByIntelligence(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, String str, String str2) {
        int m7v = m7v(localConstructionCatalog.rule("B", Integer.valueOf(m7v(doc(doc(doc(doc(doc(bArr, "city"), "areas"), str), "bd"), str2), "id"))), "type");
        require(m7v >= 1 && m7v <= 3, "情报损毁目标不是原普通建筑");
        return removeBuilding(bArr, localConstructionCatalog, str, str2, true);
    }

    private static LocalEconomyEngine.Result demolish(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        String str = "aid";
        String str2 = "bd";
        String str3 = "city";
        LocalEconomyEngine.Result result = new LocalEconomyEngine.Result(bArr);
        try {
            String uuidValue = BsonLite.uuidValue(bArr2, "u");
            require((uuidValue == null || uuidValue.isEmpty()) ? false : true, "建筑标识无效");
            byte[] doc = doc(bArr, "q7BuildingRemovals");
            if (BsonLite.documentValue(doc, uuidValue) != null) {
                result.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, bArr)));
                result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.cityDataReplyDocument(progress, bArr)));
                result.accepted = true;
                result.replay = true;
                return result;
            }
            require((progress == null || progress.inEmergency) ? false : true, "当前不能拆除建筑");
            require(!progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty() && progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情、战斗或巡查");
            byte[] withPatrolProgress = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
            byte[] doc2 = doc(withPatrolProgress, "city");
            byte[] doc3 = doc(doc2, "areas");
            String str4 = null;
            int i = 0;
            int i2 = 0;
            String str5 = null;
            for (String str6 : BsonLite.keys(doc3)) {
                String str7 = str;
                String str8 = str3;
                Iterator<String> it = BsonLite.keys(doc(doc(doc3, str6), str2)).iterator();
                while (it.hasNext()) {
                    String str9 = str5;
                    str5 = it.next();
                    Iterator<String> it2 = it;
                    byte[] doc4 = doc(doc(doc(doc3, str6), str2), str5);
                    String str10 = str2;
                    if (uuidValue.equals(BsonLite.uuidValue(doc4, "uuid"))) {
                        require(str4 == null, "建筑标识重复，未执行拆除");
                        i = m7v(doc(doc3, str6), "id");
                        i2 = m7v(doc4, "id");
                        str4 = str6;
                        it = it2;
                        str2 = str10;
                    } else {
                        it = it2;
                        str5 = str9;
                        str2 = str10;
                    }
                }
                str3 = str8;
                str = str7;
            }
            String str11 = str;
            String str12 = str3;
            require(str4 != null, "建筑不存在或已移除");
            require(LocalCityProgress.status(progress, i, bArr) == 0, "该地区尚未解放，无法拆除建筑");
            require(m7v(localConstructionCatalog.rule("B", Integer.valueOf(i2)), "can_remove") == 1, "该建筑不能拆除");
            require(m7v(doc2, "rbn") >= 0 && m7v(doc2, "rbn") < 3, "本周目拆除次数已用尽");
            result.profile = removeBuilding(withPatrolProgress, localConstructionCatalog, str4, str5, false);
            byte[] withProfileInt = BsonLite.withProfileInt(doc(result.profile, str12), "rbn", m7v(doc2, "rbn") + 1);
            result.profile = BsonLite.withProfileDocument(result.profile, str12, withProfileInt);
            result.profile = BsonLite.withProfileDocument(result.profile, "q7BuildingRemovals", BsonLite.withProfileDocument(doc, uuidValue, BsonLite.document(str11, Integer.valueOf(i), "fi", Integer.valueOf(Integer.parseInt(str5)), "bi", Integer.valueOf(i2))));
            result.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result.profile), "cd", withProfileInt)));
            result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", withProfileInt)));
            result.replies.add(new LocalResourceEngine.Reply("area_building_destroy", BsonLite.document(str11, Integer.valueOf(i), "bid", Integer.valueOf(i2))));
            result.accepted = true;
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalEconomyEngine.Result result2 = new LocalEconomyEngine.Result(bArr);
            result2.reason = e.getMessage();
            result2.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result2.reason)));
            return result2;
        }
    }

    private static byte[] removeBuilding(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, String str, String str2, boolean z) {
        byte[] withoutProfileKey;
        int i;
        LocalConstructionCatalog localConstructionCatalog2 = localConstructionCatalog;
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        byte[] doc3 = doc(doc2, str);
        int m7v = m7v(doc(doc(doc3, "bd"), str2), "id");
        int[] iArr = totals(localConstructionCatalog2, doc2, bArr);
        byte[] withProfileDocument = BsonLite.withProfileDocument(doc3, "bd", BsonLite.withoutProfileKey(doc(doc3, "bd"), str2));
        if (z) {
            withoutProfileKey = BsonLite.withProfileInt(doc(withProfileDocument, "dbd"), str2, m7v);
        } else {
            withoutProfileKey = BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), str2);
        }
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(doc2, str, BsonLite.withProfileDocument(withProfileDocument, "dbd", withoutProfileKey));
        int[] iArr2 = totals(localConstructionCatalog2, withProfileDocument2, bArr);
        String[] strArr = {"fv", "rv", "dv"};
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = 3;
            if (i3 >= 3) {
                break;
            }
            doc = BsonLite.withProfileInt(doc, strArr[i3], Math.addExact(m7v(doc, strArr[i3]), iArr2[i3] - iArr[i3]));
            i3++;
        }
        for (String str3 : BsonLite.keys(withProfileDocument2)) {
            byte[] doc4 = doc(withProfileDocument2, str3);
            Object[] objArr = new Object[2];
            objArr[i2] = str3;
            objArr[1] = doc(doc2, str3);
            int[] iArr3 = totals(localConstructionCatalog2, BsonLite.document(objArr), bArr);
            Object[] objArr2 = new Object[2];
            objArr2[i2] = str3;
            objArr2[1] = doc4;
            int[] iArr4 = totals(localConstructionCatalog2, BsonLite.document(objArr2), bArr);
            while (i2 < i) {
                doc4 = BsonLite.withProfileInt(doc4, strArr[i2], Math.addExact(m7v(doc4, strArr[i2]), iArr4[i2] - iArr3[i2]));
                i2++;
                doc2 = doc2;
                i = 3;
            }
            withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument2, str3, doc4);
            localConstructionCatalog2 = localConstructionCatalog;
            i2 = 0;
            i = 3;
        }
        return BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", withProfileDocument2)), "q7DailyBuildIncome", iArr2[3]);
    }

    private static int countCity(byte[] bArr, int i) {
        byte[] doc = doc(bArr, "areas");
        Iterator<String> it = BsonLite.keys(doc).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += count(doc(doc(doc, it.next()), "bd"), i);
        }
        return i2;
    }

    private static void validateBuilding(LocalConstructionCatalog localConstructionCatalog, byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        int count = count(doc(bArr2, "bd"), i);
        int countCity = countCity(bArr, i);
        Integer intValue = BsonLite.intValue(doc(bArr3, "al"), Integer.toString(m7v(bArr2, "id")));
        require(intValue == null || count < intValue.intValue(), "该地区的同类建筑已达上限");
        require(m7v(bArr3, "ml") == 0 || countCity < m7v(bArr3, "ml"), "城市同类建筑已达上限");
        byte[] doc = doc(bArr3, "area_building_require");
        boolean isEmpty = BsonLite.keys(doc).isEmpty();
        for (String str : BsonLite.keys(doc)) {
            isEmpty |= count(doc(bArr2, "bd"), Integer.parseInt(str)) >= m7v(doc, str);
        }
        require(isEmpty, "尚未满足地区前置建筑条件");
        if (m7v(bArr3, "init") == 0) {
            List<Integer> intArrayValues = BsonLite.intArrayValues(bArr3, "pre");
            if (intArrayValues.isEmpty()) {
                require(BsonLite.intArrayValues(bArr, "hb").contains(Integer.valueOf(i)), "此特殊建筑尚未解锁");
            }
            Iterator<Integer> it = intArrayValues.iterator();
            while (it.hasNext()) {
                require(countCity(bArr, it.next().intValue()) > 0, "尚未满足城市前置建筑条件");
            }
        }
    }

    private static int[] totals(LocalConstructionCatalog localConstructionCatalog, byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        int[] iArr = new int[4];
        Iterator<byte[]> it = LocalResourceEngine.array(doc(doc(bArr2, "heromgr"), "hrs")).iterator();
        int i3 = 0;
        while (it.hasNext()) {
            if (!Boolean.TRUE.equals(BsonLite.boolValue(doc(it.next(), "1"), "cfd"))) {
                i3++;
            }
        }
        int min = Math.min(30, i3);
        Iterator<String> it2 = BsonLite.keys(bArr).iterator();
        while (it2.hasNext()) {
            byte[] doc = doc(bArr, it2.next());
            byte[] doc2 = doc(doc, "bd");
            if (m7v(doc(doc, "st"), "0") == 0) {
                int i4 = 3;
                int[] iArr2 = new int[3];
                int[] iArr3 = new int[3];
                Iterator<String> it3 = BsonLite.keys(doc2).iterator();
                while (it3.hasNext()) {
                    int m7v = m7v(doc(doc2, it3.next()), "id");
                    byte[] rule = localConstructionCatalog.rule("B", Integer.valueOf(m7v));
                    String[] strArr = {"force_val", "research_val", "dev_val"};
                    int i5 = 0;
                    while (i5 < i4) {
                        int m7v2 = m7v(rule, strArr[i5]);
                        iArr2[i5] = Math.addExact(iArr2[i5], m7v2);
                        if (m7v2 <= 0) {
                            if (m7v != (i5 == 0 ? 6 : i5 == 1 ? 11 : 16)) {
                                i5++;
                                i4 = 3;
                            }
                        }
                        iArr3[i5] = iArr3[i5] + 1;
                        i5++;
                        i4 = 3;
                    }
                    i4 = 3;
                }
                int i6 = 0;
                while (i6 < 3) {
                    int i7 = i6 == 0 ? 3 : i6 == 1 ? 8 : 13;
                    if (i6 == 0) {
                        i = 6;
                    } else {
                        i = i6 == 1 ? 11 : 16;
                    }
                    if (i6 == 0) {
                        i2 = 5;
                    } else {
                        i2 = i6 == 1 ? 10 : 15;
                    }
                    iArr2[i6] = Math.addExact(iArr2[i6], Math.multiplyExact(count(doc2, i7), iArr3[i6]));
                    iArr2[i6] = Math.addExact(iArr2[i6], Math.multiplyExact(count(doc2, i), min));
                    for (int i8 = 0; i8 < count(doc2, i2); i8++) {
                        iArr2[i6] = Math.toIntExact(((iArr2[i6] * 3) + 1) / 2);
                    }
                    iArr[i6] = Math.addExact(iArr[i6], iArr2[i6]);
                    i6++;
                }
                iArr[3] = Math.addExact(iArr[3], m7v(localConstructionCatalog.rule("U", m7v(doc, "id") + ":" + m7v(doc, "lv")), "money_output"));
            }
        }
        return iArr;
    }
}
