.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckingState"
.end annotation


# instance fields
.field dnsCheckLogStr:Ljava/lang/String;

.field dnsCheckSuccesses:[I

.field dnsResponseStrs:[Ljava/lang/String;

.field idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field mPingIpAddrResult:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    .line 1128
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    .line 1134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1287
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 1288
    .local v3, "logStr":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1289
    .local v4, "respStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    .end local v4    # "respStr":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    .line 1141
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1142
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1144
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getDefaultDns()Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1146
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1147
    .local v0, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1148
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v0    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1151
    .local v3, "numDnses":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of DNSes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1153
    :cond_1
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    .line 1154
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .line 1155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1156
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1158
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1159
    const-string v4, "Pinging %s on ssid [%s]: "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 1161
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1164
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1165
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1166
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1167
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v6

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    mul-int/lit16 v8, v1, 0xc8

    add-int/lit16 v8, v8, 0xbb8

    invoke-virtual {v6, v4, v7, v8}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1165
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1172
    .end local v2    # "j":I
    :cond_5
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1176
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    move v7, v8

    .line 1283
    :goto_0
    return v7

    .line 1178
    :sswitch_0
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I
    invoke-static {v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    if-ne v9, v10, :cond_d

    .line 1180
    :try_start_0
    const-string v2, "8.8.8.8"

    .line 1181
    .local v2, "ipAddress":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start ping test, ping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ping -c 1 -W 10 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1183
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 1184
    .local v6, "status":I
    if-nez v6, :cond_2

    .line 1185
    const-string v8, "Pass"

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    .line 1186
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1191
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v6    # "status":I
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Fail: IOException"

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    .line 1197
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPingIpAddrResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1200
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v9, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1202
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1203
    :cond_1
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1204
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1209
    :goto_2
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1189
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v6    # "status":I
    :cond_2
    :try_start_2
    const-string v8, "Fail: IP addr not reachable"

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1193
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v6    # "status":I
    :catch_1
    move-exception v1

    .line 1194
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v8, "Fail: InterruptedException"

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_1

    .line 1205
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 1214
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1215
    .local v4, "pingID":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1217
    .local v5, "pingResponseTime":I
    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1218
    .local v0, "dnsServerId":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1219
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "Received a Dns response with unknown ID!"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    :cond_3
    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    if-ltz v5, :cond_4

    .line 1225
    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 1227
    :cond_4
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1228
    if-ltz v5, :cond_7

    .line 1229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v12, v10, v11

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "|"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    .line 1239
    :cond_5
    :goto_3
    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static {v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    if-lt v9, v10, :cond_8

    .line 1241
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1242
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  SUCCESS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1245
    :cond_6
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1246
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1248
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1231
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v12, v10, v11

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "|x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    goto :goto_3

    .line 1252
    :cond_8
    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1253
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1254
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  FAILURE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1257
    :cond_9
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1258
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1260
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-ne v8, v7, :cond_a

    .line 1261
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "This is captive portal, do not disconnect!"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1262
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1267
    :cond_a
    :try_start_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v9, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1268
    :cond_b
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1269
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1270
    :cond_c
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1271
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1276
    :goto_4
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1272
    :catch_3
    move-exception v1

    .line 1273
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "dnsServerId":Ljava/lang/Integer;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "pingID":I
    .end local v5    # "pingResponseTime":I
    :cond_d
    move v7, v8

    .line 1283
    goto/16 :goto_0

    .line 1176
    :sswitch_data_0
    .sparse-switch
        0x2101a -> :sswitch_0
        0x50000 -> :sswitch_1
    .end sparse-switch
.end method
