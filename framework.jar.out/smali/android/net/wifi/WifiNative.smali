.class public Landroid/net/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static final DBG:Z = true

.field static final DEBUG_SCREEN_CMD_CHANNEL:I = 0x0

.field static final DEBUG_SCREEN_CMD_FERPER:I = 0x2

.field static final DEBUG_SCREEN_CMD_TXPWR:I = 0x1

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x7

.field static final SCAN_WITHOUT_CONNECTION_SETUP:I = 0x1

.field static final SCAN_WITH_CONNECTION_SETUP:I = 0x2

.field private static final mLocalLog:Landroid/util/LocalLog;

.field static final mLock:Ljava/lang/Object;


# instance fields
.field private mCmdId:I

.field public final mInterfaceName:Ljava/lang/String;

.field public final mInterfacePrefix:Ljava/lang/String;

.field private mOperationalMode:I

.field private mSuspendOptEnabled:Z

.field private final mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Landroid/net/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiNative;->mOperationalMode:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 108
    iput-object p1, p0, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "p2p0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private native closeSupplicantConnectionNative()V
.end method

.method private native connectToSupplicantNative()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBoolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v3, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 155
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 156
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 158
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v3

    return v1

    .line 161
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v3, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 167
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 168
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit v3

    return v1

    .line 173
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v3, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 179
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 180
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-exit v3

    return-object v1

    .line 185
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNewCmdIdLocked()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Landroid/net/wifi/WifiNative;->mCmdId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiNative;->mCmdId:I

    return v0
.end method

.method public static native initConfig()Z
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static native killSupplicant(Z)Z
.end method

.method public static native loadDriver()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Landroid/net/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Landroid/net/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method private p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 917
    if-nez p1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-object v7

    .line 919
    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 920
    .local v4, "peerInfo":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 921
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, "tokens":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 924
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 925
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 926
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "nameValue":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 928
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 924
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static native startSupplicant(Z)Z
.end method

.method public static native unloadDriver()Z
.end method

.method private native waitForEventNative()Ljava/lang/String;
.end method


# virtual methods
.method public addNetwork()I
    .locals 1

    .prologue
    .line 225
    const-string v0, "ADD_NETWORK"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public bssFlush()V
    .locals 1

    .prologue
    .line 542
    const-string v0, "BSS_FLUSH 0"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 543
    return-void
.end method

.method public cancelWps()Z
    .locals 1

    .prologue
    .line 601
    const-string v0, "WPS_CANCEL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public chooseRealmForAka(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHOOSE_REALM_AKA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearBlacklist()Z
    .locals 1

    .prologue
    .line 483
    const-string v0, "BLACKLIST clear"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeSupplicantConnection()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closeSupplicantConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->closeSupplicantConnectionNative()V

    .line 145
    return-void
.end method

.method public connectToSupplicant()Z
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectToSupplicant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->connectToSupplicantNative()Z

    move-result v0

    return v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 272
    const-string v0, "DISCONNECT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doWiFiCustBooleanCommand(Ljava/lang/String;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWiFiCustBooleanCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doWiFiCustIntCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWiFiCustIntCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWiFiCustStringCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableBackgroundScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v1, "doBoolean: enable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v0, "SET pno 1"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 506
    :goto_0
    return v0

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v1, "doBoolean: disable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "SET pno 0"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableOthers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperationalMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNative;->mOperationalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p0, Landroid/net/wifi/WifiNative;->mOperationalMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v1, "Do not send ENABLE_NETWORK in SCAN_ONLY_WITH_WIFI_OFF_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    if-eqz p2, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBand()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 422
    const-string v4, "DRIVER GETBAND"

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 425
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 432
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 428
    .restart local v2    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getBatchedScanResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-string v0, "DRIVER WLS_BATCHING GET"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugScreenCommand(I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 1021
    packed-switch p1, :pswitch_data_0

    .line 1031
    const-string v0, "FAIL"

    :goto_0
    return-object v0

    .line 1023
    :pswitch_0
    const-string v0, "DRIVER CHANNEL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1025
    :pswitch_1
    const-string v0, "DRIVER TXPOWER"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1027
    :pswitch_2
    const-string v0, "DRIVER FER/PER"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEapAkaFailCode()I
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v1, "getEapAkaFailCode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v0, "GET_FAIL_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 892
    const/4 v2, 0x0

    .line 893
    .local v2, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 909
    .end local v2    # "gc":I
    :cond_0
    :goto_0
    return v2

    .line 894
    .restart local v2    # "gc":I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 895
    .local v6, "peerInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 897
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, "tokens":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 899
    .local v7, "token":Ljava/lang/String;
    const-string v9, "group_capab="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 900
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 901
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 903
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 904
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 898
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getLocalLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/net/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    const-string v2, "DRIVER MACADDR"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 286
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPantechWifiInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "vnd"    # Ljava/lang/String;

    .prologue
    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PANTECHWIFI_GETINFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "Info"    # Ljava/lang/String;

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiNativeCommand Info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v0, "CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    const-string v0, "DRIVER CHANNEL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1045
    .end local p1    # "Info":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1040
    .restart local p1    # "Info":Ljava/lang/String;
    :cond_1
    const-string v0, "TXPOWER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    const-string v0, "DRIVER TXPOWER"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1042
    :cond_2
    const-string v0, "FER/PER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "DRIVER FER/PER"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public initRssiDisconnectCommand()Z
    .locals 1

    .prologue
    .line 1080
    const-string v0, "INIT_RSSIDISCONNECT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listNetworks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "LIST_NETWORKS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 810
    const-string v0, "P2P_CANCEL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .prologue
    .line 758
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 806
    :goto_0
    return-object v6

    .line 759
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 761
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 786
    :goto_1
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 787
    const-string/jumbo v6, "persistent"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_1
    if-eqz p2, :cond_3

    .line 791
    const-string v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :goto_2
    const-string v1, "P2P_CONNECT "

    .line 804
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 765
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 768
    :pswitch_1
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 769
    const-string/jumbo v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :goto_4
    const-string v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 771
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 776
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 780
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 795
    :cond_3
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 796
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_4

    const/16 v6, 0xf

    if-le v2, v6, :cond_5

    .line 797
    :cond_4
    const/4 v2, 0x7

    .line 800
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 806
    .end local v2    # "groupOwnerIntent":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public p2pExtListen(ZII)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    .prologue
    .line 721
    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_EXT_LISTEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public p2pFastFind()Z
    .locals 1

    .prologue
    .line 694
    const-string v0, "P2P_FIND type=social"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFastFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 698
    if-gtz p1, :cond_0

    .line 699
    invoke-virtual {p0}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 701
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND type=social "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pFind()Z
    .locals 1

    .prologue
    .line 682
    const-string v0, "P2P_FIND"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 686
    if-gtz p1, :cond_0

    .line 687
    invoke-virtual {p0}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 689
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pFlush()Z
    .locals 1

    .prologue
    .line 752
    const-string v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v4

    .line 878
    .local v4, "status":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v7, ""

    .line 888
    :goto_0
    return-object v7

    .line 880
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 882
    .local v5, "token":Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 883
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "nameValue":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 888
    .end local v3    # "nameValue":[Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 885
    .restart local v3    # "nameValue":[Ljava/lang/String;
    .restart local v5    # "token":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 881
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 873
    const-string/jumbo v0, "oper_ssid"

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_GROUP_ADD persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 833
    const-string v0, "P2P_GROUP_ADD persistent"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 835
    :goto_0
    return v0

    :cond_0
    const-string v0, "P2P_GROUP_ADD"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 845
    :goto_0
    return v0

    .line 844
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_GROUP_REMOVE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 855
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 860
    :goto_0
    return v0

    .line 857
    :cond_0
    if-nez p1, :cond_1

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 860
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " go_dev_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pListen()Z
    .locals 1

    .prologue
    .line 710
    const-string v0, "P2P_LISTEN"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 714
    if-gtz p1, :cond_0

    .line 715
    invoke-virtual {p0}, Landroid/net/wifi/WifiNative;->p2pListen()Z

    move-result v0

    .line 717
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x0

    .line 814
    if-nez p1, :cond_0

    .line 828
    :goto_0
    return v0

    .line 816
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 821
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keypad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 824
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 867
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 869
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SERV_DISC_CANCEL_REQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 997
    const-string v0, "P2P_SERV_DISC_REQ"

    .line 998
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 5
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 955
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 956
    .local v2, "s":Ljava/lang/String;
    const-string v0, "P2P_SERVICE_ADD"

    .line 957
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 959
    const/4 v3, 0x0

    .line 962
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 8
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 970
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 971
    .local v3, "s":Ljava/lang/String;
    const-string v0, "P2P_SERVICE_DEL "

    .line 973
    .local v0, "command":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "data":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 989
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 977
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v1    # "data":[Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "upnp"

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    :goto_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 979
    :cond_3
    const-string v6, "bonjour"

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 989
    goto :goto_0
.end method

.method public p2pServiceFlush()Z
    .locals 1

    .prologue
    .line 993
    const-string v0, "P2P_SERVICE_FLUSH"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 6
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 729
    iget-object v2, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pSetChannel: lc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-lt p1, v5, :cond_1

    const/16 v2, 0xb

    if-gt p1, v2, :cond_1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P2P_SET listen_channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 735
    :cond_1
    if-nez p1, :cond_0

    .line 739
    :cond_2
    if-lt p2, v5, :cond_4

    const/16 v2, 0xa5

    if-gt p2, v2, :cond_4

    .line 740
    const/16 v1, 0xe

    if-gt p2, v1, :cond_3

    const/16 v1, 0x967

    :goto_1
    mul-int/lit8 v2, p2, 0x5

    add-int v0, v1, v2

    .line 741
    .local v0, "freq":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P_SET disallow_freq 1000-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-6000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 740
    .end local v0    # "freq":I
    :cond_3
    const/16 v1, 0x1388

    goto :goto_1

    .line 743
    :cond_4
    if-nez p2, :cond_0

    .line 745
    const-string v1, "P2P_SET disallow_freq \"\""

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public p2pStopFind()Z
    .locals 1

    .prologue
    .line 706
    const-string v0, "P2P_STOP_FIND"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ping()Z
    .locals 2

    .prologue
    .line 196
    const-string v1, "PING"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "pong":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "PONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pktcntPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string v0, "PKTCNT_POLL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 268
    const-string v0, "REASSOCIATE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 264
    const-string v0, "RECONNECT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removePseudonymId()Z
    .locals 1

    .prologue
    .line 1107
    const-string v0, "REMOVE_PSEUDONYM_ID"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rssiDisconnectCommand()Z
    .locals 1

    .prologue
    .line 1076
    const-string v0, "RSSIDISCONNECT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveConfig()Z
    .locals 1

    .prologue
    .line 468
    const-string v0, "SAVE_CONFIG"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scan(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    const-string v0, "SCAN TYPE=ONLY"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 204
    const-string v0, "SCAN"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scan type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanResults(I)Ljava/lang/String;
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSS RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- MASK=0x21987"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBand(I)Z
    .locals 2
    .param p1, "band"    # I

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;
    .locals 7
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    const v6, 0x7fffffff

    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string v4, "DRIVER WLS_BATCHING STOP"

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    :goto_0
    return-object v4

    .line 328
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER WLS_BATCHING SET SCANFREQ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MSCAN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v4, v6, :cond_1

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BESTN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CHANNEL=<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "i":I
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v2, :cond_2

    const-string v4, ","

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 340
    .end local v0    # "channel":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v4, v6, :cond_5

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RTT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_5
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER BTCOEXMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1
    .param p1, "setCoexScanMode"    # Z

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    const-string v0, "DRIVER BTCOEXSCAN-START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const-string v0, "DRIVER BTCOEXSCAN-STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SET conc_pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET config_methods "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER COUNTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisableEnableAllNetworks(Z)Z
    .locals 3
    .param p1, "Disable"    # Z

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisableEnableAllNetworks Disable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1138
    const-string v0, "DISABLE_ENABLE_ALL_NETWORKS 1"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1140
    :goto_0
    return v0

    :cond_0
    const-string v0, "DISABLE_ENABLE_ALL_NETWORKS 0"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setInitConfig()Z
    .locals 1

    .prologue
    .line 473
    const-string v0, "SET_INIT_CONFIG"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setManualConnection(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1051
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1052
    const-string v0, "ENABLE_PROFILE_MANUAL_CONNECTION all"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1054
    :goto_0
    return v0

    :cond_0
    const-string v0, "DISABLE_PROFILE_MANUAL_CONNECTION all"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET manufacturer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER MIRACAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1016
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET model_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET model_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/net/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOperationalMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iput p1, p0, Landroid/net/wifi/WifiNative;->mOperationalMode:I

    .line 1149
    return-void
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 642
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SET p2p_group_idle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 656
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    if-eqz p2, :cond_0

    .line 658
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_SET ps 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 660
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_SET ps 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET p2p_ssid_postfix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPersistentReconnect(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 605
    if-ne p1, v0, :cond_0

    .line 606
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 605
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    const-string v0, "SET ps 1"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v0, "SET ps 0"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setProfileManualConnection(IZ)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1060
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_PROFILE_MANUAL_CONNECTION %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1063
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISABLE_PROFILE_MANUAL_CONNECTION %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRssiThresholdCommand(I)Z
    .locals 2
    .param p1, "newRssi"    # I

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSSI THRESHOLD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRunningWifiCmApp(I)Z
    .locals 2
    .param p1, "isRunning"    # I

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RUNNING_WIFI_CM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "scanInterval"    # I

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCAN_INTERVAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 512
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET serial_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/net/wifi/WifiNative;->mSuspendOptEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    .line 488
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 489
    if-eqz p1, :cond_1

    .line 490
    const-string v0, "DRIVER SETSUSPENDMODE 1"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    const-string v0, "DRIVER SETSUSPENDMODE 0"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFD_SUBELEM_SET 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET wifi_display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-string v0, "SIGNAL_POLL"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startDriver()Z
    .locals 1

    .prologue
    .line 353
    const-string v0, "DRIVER START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 386
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-REMOVE 2"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 406
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-REMOVE 3"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 515
    if-eqz p2, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDLS_DISCOVER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDLS_SETUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDLS_TEARDOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "WPS_PBC"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 549
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PBC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 554
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PBC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 558
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PBC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "WPS_PIN any"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 585
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 589
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    .line 570
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN any "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 597
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_REG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "STATUS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopDriver()Z
    .locals 1

    .prologue
    .line 357
    const-string v0, "DRIVER STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 396
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-ADD 2"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 416
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-ADD 3"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopSupplicant()Z
    .locals 1

    .prologue
    .line 217
    const-string v0, "TERMINATE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/net/wifi/WifiNative;->waitForEventNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
