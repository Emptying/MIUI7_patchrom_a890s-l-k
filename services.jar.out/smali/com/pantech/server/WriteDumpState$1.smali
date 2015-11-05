.class Lcom/pantech/server/WriteDumpState$1;
.super Ljava/lang/Thread;
.source "WriteDumpState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/WriteDumpState;->createLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/WriteDumpState;

.field final synthetic val$szLogPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/server/WriteDumpState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/server/WriteDumpState$1;->this$0:Lcom/pantech/server/WriteDumpState;

    iput-object p3, p0, Lcom/pantech/server/WriteDumpState$1;->val$szLogPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    const-string v2, "WriteDumpState"

    const-string v3, "dumpstate start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pdumplog"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-o"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/pantech/server/WriteDumpState$1;->val$szLogPath:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "-z"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    .local v0, "dumpstate":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 80
    const-string v2, "WriteDumpState"

    const-string v3, "dumpstate end sleep 1000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .end local v0    # "dumpstate":Ljava/lang/Process;
    :goto_3
    const-string v2, "WriteDumpState"

    const-string v3, "dumpstate end !!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "WriteDumpState"

    const-string v3, "dumpstate exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 76
    .restart local v0    # "dumpstate":Ljava/lang/Process;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 75
    :catch_2
    move-exception v2

    goto :goto_1

    .line 74
    :catch_3
    move-exception v2

    goto :goto_0
.end method
