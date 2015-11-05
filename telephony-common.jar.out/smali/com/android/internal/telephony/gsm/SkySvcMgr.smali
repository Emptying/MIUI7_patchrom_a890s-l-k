.class public Lcom/android/internal/telephony/gsm/SkySvcMgr;
.super Ljava/lang/Object;
.source "SkySvcMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;,
        Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;
    }
.end annotation


# static fields
.field public static final DISP_CLEAR_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.DISP_CLEAR_EVENT"

.field public static final IMMED_REJ_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.IMMED_REJ_EVENT"

.field public static final INDEX_ACC_BARRED:I = 0xe

.field public static final INDEX_AIRPLAME_MODE:I = 0xd

.field public static final INDEX_DEFAULT:I = 0x1

.field public static final INDEX_GSM_NOT_SUPPORTED:I = 0xb

.field public static final INDEX_ILLEGAL_ME:I = 0x4

.field public static final INDEX_ILLEGAL_MS:I = 0x3

.field public static final INDEX_IMSI_UNKWN:I = 0x2

.field public static final INDEX_NO:I = 0x0

.field public static final INDEX_NOT_SUPPORT_DATA_SVC:I = 0x6

.field public static final INDEX_NO_SERVICE:I = 0xc

.field public static final INDEX_REGI_ATTEMP:I = 0x5

.field public static final INDEX_SUBS_MO_LOCK:I = 0x9

.field public static final INDEX_SYSTEMSCAN:I = 0x7

.field public static final INDEX_UICCLOCK:I = 0x8

.field public static final INDEX_UNABLE_SIMCARD:I = 0xa

.field public static final NO_NETWORK_IN_GSM_ONLY:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY"

.field public static final NO_NETWORK_IN_GSM_ONLY_CLEAR:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY_CLEAR"

.field public static final OUTBOUND_TO_DOMESTIC_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.OUTBOUND_TO_DOMESTIC_EVENT"

.field public static final SERVICE_CHANGED_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.SERVICE_CHANGED_EVENT"

.field public static final SRV_STATUS_LIMITED:I = 0x1

.field public static final SRV_STATUS_NO_SERVICE:I = 0x0

.field public static final SRV_STATUS_SRV:I = 0x2

.field public static final SYSTEM_SCAN_DISP_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.SYSTEM_SCAN_DISP_EVENT"

.field public static final SYS_SIM_STATE_AVAILABLE:I = 0x1

.field public static final SYS_SIM_STATE_CS_INVALID:I = 0x2

.field public static final SYS_SIM_STATE_CS_PS_INVALID:I = 0x4

.field public static final SYS_SIM_STATE_NONE:I = -0x1

.field public static final SYS_SIM_STATE_NOT_AVAILABLE:I = 0x0

.field public static final SYS_SIM_STATE_PS_INVALID:I = 0x3

.field private static TAG:Ljava/lang/String; = null

.field public static final UICC_DISP_CLEAR_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.UICC_DISP_CLEAR_EVENT"

.field public static final UICC_LOCKING_DISP_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.UICC_LOCKING_DISP_EVENT"

.field public static final WHEN_ORIG_START_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkySvcMgr.WHEN_ORIG_START_EVENT"

.field private static eventList:[Ljava/lang/String;

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

.field private mWhat:I

.field r:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "SkySvcMgr"

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.SERVICE_CHANGED_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.IMMED_REJ_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.WHEN_ORIG_START_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.DISP_CLEAR_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.SYSTEM_SCAN_DISP_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.UICC_LOCKING_DISP_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.UICC_DISP_CLEAR_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY_CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.internal.telephony.gsm.SkySvcMgr.OUTBOUND_TO_DOMESTIC_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->eventList:[Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    .line 127
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->context:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mH:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkySvcMgr$1;-><init>(Lcom/android/internal/telephony/gsm/SkySvcMgr;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkySvcMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkySvcMgr;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    return-void
.end method


# virtual methods
.method public UnregisterEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v1, "UnregisterReceiver of IntentFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public getDispClearEvent()I
    .locals 6

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "dispState":I
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v4, "getDispClearEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v4, "svcmgr.getDispClearEvent"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 382
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 384
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 385
    .local v1, "responseData":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 393
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received SVCMGR_PH_DISP_CLEAR_EVENT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 395
    .end local v1    # "responseData":Ljava/nio/ByteBuffer;
    :goto_0
    return v3

    .line 389
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v4, "getDispClearEvent() is Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getSimState()I
    .locals 6

    .prologue
    .line 319
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v4, "getSimState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v4, "svcmgr.getSimState"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v1

    .line 323
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 327
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 329
    .local v2, "state":I
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "output":Ljava/nio/ByteBuffer;
    .end local v2    # "state":I
    :goto_0
    return v2

    .line 334
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v4, "Get Sim State error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getSrvStatus()I
    .locals 7

    .prologue
    .line 343
    const/4 v3, 0x0

    .line 345
    .local v3, "status":I
    sget-object v4, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v5, "getSrvStatus?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v5, "svcmgr.getSrvStatus"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v1

    .line 348
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 350
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    .local v0, "responseData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 354
    .local v2, "s":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 364
    .end local v0    # "responseData":Ljava/nio/ByteBuffer;
    .end local v2    # "s":I
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATUS ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v3

    .line 355
    .restart local v0    # "responseData":Ljava/nio/ByteBuffer;
    .restart local v2    # "s":I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 356
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "responseData":Ljava/nio/ByteBuffer;
    .end local v2    # "s":I
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v5, "Unable to isCallOK()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public isCallOK(Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;)Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;
    .locals 10
    .param p1, "callType"    # Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 199
    const/4 v0, 0x0

    .line 202
    .local v0, "index":I
    const/4 v6, 0x4

    new-array v3, v6, [B

    .line 203
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 204
    .local v2, "pBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 206
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v8, "IsCallOK?"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v8, "svcmgr.isCallOK"

    invoke-virtual {v6, v8, v3}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;

    move-result-object v5

    .line 209
    .local v5, "result":Landroid/os/AsyncResult;
    new-instance v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;-><init>(Lcom/android/internal/telephony/gsm/SkySvcMgr;)V

    .line 211
    .local v1, "info":Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 213
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-static {v6}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 214
    .local v4, "responseData":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->isCallOk:Z

    .line 216
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 217
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get cause index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v4    # "responseData":Ljava/nio/ByteBuffer;
    :goto_2
    return-object v1

    .line 214
    .restart local v4    # "responseData":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 222
    :pswitch_0
    iput-object v9, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 225
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 228
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 231
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 234
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 237
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 240
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x104069f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 243
    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 246
    :pswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto :goto_1

    .line 249
    :pswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 252
    :pswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 255
    :pswitch_b
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :pswitch_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 261
    :pswitch_d
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 264
    :pswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->r:Landroid/content/res/Resources;

    const v7, 0x10406a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_1

    .line 272
    .end local v4    # "responseData":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v8, "Unable to isCallOK()"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-boolean v7, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->isCallOk:Z

    .line 274
    iput-object v9, v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    goto/16 :goto_2

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public isOtherMccCardAndOtherMccNetwork()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 286
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v5, "isOtherMccCardAndOtherMccNetwork"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mSkyQcRilOemHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v5, "svcmgr.isOtherMccCardAndOtherMccNetwork"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 290
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 293
    .local v1, "output":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 294
    .local v0, "flag":I
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-lez v0, :cond_0

    const/4 v3, 0x1

    .line 302
    .end local v0    # "flag":I
    .end local v1    # "output":Ljava/nio/ByteBuffer;
    :goto_0
    return v3

    .restart local v0    # "flag":I
    .restart local v1    # "output":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v4

    .line 297
    goto :goto_0

    .line 301
    .end local v0    # "flag":I
    .end local v1    # "output":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v5, "isOtherMccCardAndOtherMccNetwork fail"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 302
    goto :goto_0
.end method

.method public registerEvent(Ljava/lang/String;I)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "found":Z
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->eventList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 160
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const/4 v1, 0x1

    .line 166
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It not invalid event"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 169
    .local v5, "w":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It is already registered"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr;->TAG:Ljava/lang/String;

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
