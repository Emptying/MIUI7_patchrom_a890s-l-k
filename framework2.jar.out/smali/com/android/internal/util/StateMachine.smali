.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$1;,
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1

.field private static mMsgStr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine;->mMsgStr:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1280
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1281
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1283
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1284
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1302
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1293
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$702(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 419
    sput-object p0, Lcom/android/internal/util/StateMachine;->mMsgStr:Ljava/util/HashMap;

    return-object p0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1270
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1271
    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1502
    iget-object v7, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1503
    .local v7, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v7, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1504
    :cond_0
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v4

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v3

    aget-object v1, v1, v3

    iget-object v5, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected final addState(Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1319
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1311
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1486
    .local v3, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1487
    .local v2, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v2, :cond_0

    .line 1488
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v4

    # getter for: Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/android/internal/util/StateMachine$LogRecords;->access$1800(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;

    .line 1489
    .local v1, "lr":Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1492
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lr":Lcom/android/internal/util/StateMachine$LogRec;
    :cond_0
    return-object v3
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1500(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1391
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1998
    const-string v1, " rec[%d]: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1999
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2001
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    return-void
.end method

.method public enableWiFiDbgMsg()V
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1969
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1971
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->enableWiFiDbgMsg()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2800(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1337
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1338
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1347
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1348
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1477
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1478
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLogRecCount()I
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1467
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1468
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    goto :goto_0
.end method

.method public final getLogRecSize()I
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1457
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1458
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1523
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1530
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1407
    return-void
.end method

.method public isDbg()Z
    .locals 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1935
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1937
    :goto_0
    return v1

    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2500(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1902
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 1904
    :goto_0
    return v1

    .line 1902
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1904
    :cond_1
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2200(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2012
    return-void
.end method

.method protected log_str(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/Integer;

    .prologue
    .line 2025
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/util/StateMachine;->mMsgStr:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2082
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    .prologue
    .line 1415
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .prologue
    .line 1424
    return-void
.end method

.method protected final quit()V
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1913
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1916
    :goto_0
    return-void

    .line 1915
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2300(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final quitNow()V
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1924
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1927
    :goto_0
    return-void

    .line 1926
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1512
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1890
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1893
    :goto_0
    return-void

    .line 1892
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public final sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1649
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1651
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1675
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1678
    :goto_0
    return-void

    .line 1677
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1688
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1701
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1703
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1662
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1665
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1714
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1716
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1807
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1809
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1835
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1838
    :goto_0
    return-void

    .line 1837
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1850
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 1852
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1864
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1867
    :goto_0
    return-void

    .line 1866
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1821
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1824
    :goto_0
    return-void

    .line 1823
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1878
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1880
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1766
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1769
    :goto_0
    return-void

    .line 1768
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1780
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1783
    :goto_0
    return-void

    .line 1782
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1753
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1756
    :goto_0
    return-void

    .line 1755
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1727
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1730
    :goto_0
    return-void

    .line 1729
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1740
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1742
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1793
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1795
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDbg(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1948
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1951
    :goto_0
    return-void

    .line 1950
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2600(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    goto :goto_0
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1329
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1449
    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1440
    return-void
.end method

.method public setWiFiDbgMsg(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1960
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1961
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1964
    :goto_0
    return-void

    .line 1963
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->setWiFiDbgMsg(Ljava/util/HashMap;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2700(Lcom/android/internal/util/StateMachine$SmHandler;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1981
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1985
    :goto_0
    return-void

    .line 1984
    :cond_0
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2900(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1367
    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1378
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1400
    :cond_0
    return-void
.end method
