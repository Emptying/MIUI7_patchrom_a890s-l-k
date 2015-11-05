.class Lcom/android/server/LedInfoQueue;
.super Ljava/lang/Object;
.source "LedInfoQueue.java"


# static fields
.field private static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "LedInfoQueue"


# instance fields
.field mHandler:Landroid/os/Handler;

.field final mLedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/pantech/led/LedInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/LedManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LedManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/LedManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/android/server/LedInfoQueue;->mService:Lcom/android/server/LedManagerService;

    .line 23
    iput-object p2, p0, Lcom/android/server/LedInfoQueue;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method private removeHeadLocked()Lcom/android/internal/pantech/led/LedInfo;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pantech/led/LedInfo;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 81
    const-string v2, "LedInfoQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace event [appId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] to [appId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v1, 0x1

    .line 86
    :goto_1
    return v1

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sortListLocked()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/LedInfoQueue$1;

    invoke-direct {v1, p0}, Lcom/android/server/LedInfoQueue$1;-><init>(Lcom/android/server/LedInfoQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected dequeueLedInfoLocked(I)Z
    .locals 6
    .param p1, "appId"    # I

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "index":I
    const/4 v0, 0x0

    .line 49
    .local v0, "existed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pantech/led/LedInfo;

    .line 51
    .local v2, "info":Lcom/android/internal/pantech/led/LedInfo;
    invoke-virtual {v2}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 52
    const-string v3, "LedInfoQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dequeue event [appId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/android/server/LedInfoQueue;->mService:Lcom/android/server/LedManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/LedManagerService;->removeDeathHandler(I)V

    .line 56
    const/4 v0, 0x1

    .line 61
    .end local v2    # "info":Lcom/android/internal/pantech/led/LedInfo;
    :cond_0
    return v0

    .line 49
    .restart local v2    # "info":Lcom/android/internal/pantech/led/LedInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected dumpQueue(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pantech/led/LedInfo;

    .line 106
    .local v1, "info":Lcom/android/internal/pantech/led/LedInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1    # "info":Lcom/android/internal/pantech/led/LedInfo;
    :cond_0
    return-void
.end method

.method protected enqueueLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    .line 28
    .local v0, "appId":I
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 31
    const-string v1, "LedInfoQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject enqueue one-shot event id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Because of priority of requested event lower than head event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mService:Lcom/android/server/LedManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/LedManagerService;->removeDeathHandler(I)V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LedInfoQueue;->replaceLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    const-string v1, "LedInfoQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enqueue event [appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mLedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LedInfoQueue;->sortListLocked()V

    goto :goto_0
.end method

.method protected scheduleLedInfoLocked()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mService:Lcom/android/server/LedManagerService;

    invoke-virtual {v1}, Lcom/android/server/LedManagerService;->isCoverOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/server/LedInfoQueue;->removeHeadLocked()Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v0

    .line 67
    .local v0, "head":Lcom/android/internal/pantech/led/LedInfo;
    iget-object v1, p0, Lcom/android/server/LedInfoQueue;->mService:Lcom/android/server/LedManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/LedManagerService;->processLedEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    .line 69
    .end local v0    # "head":Lcom/android/internal/pantech/led/LedInfo;
    :cond_0
    return-void
.end method
