.class public Lcom/pantech/server/WriteDumpState;
.super Ljava/lang/Object;
.source "WriteDumpState.java"


# instance fields
.field public final COUNT_FILE:Ljava/lang/String;

.field private final DEBUG_D:Z

.field private final MAX_COUNT:I

.field public final ROOT_PATH:Ljava/lang/String;

.field private final STORAGE_LOW:J

.field private final TAG:Ljava/lang/String;

.field private final WAIT_TIME:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "WriteDumpState"

    iput-object v0, p0, Lcom/pantech/server/WriteDumpState;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/server/WriteDumpState;->DEBUG_D:Z

    .line 23
    const-string v0, "/data/watchdogreboot"

    iput-object v0, p0, Lcom/pantech/server/WriteDumpState;->ROOT_PATH:Ljava/lang/String;

    .line 24
    const-string v0, "/data/watchdogreboot/count.txt"

    iput-object v0, p0, Lcom/pantech/server/WriteDumpState;->COUNT_FILE:Ljava/lang/String;

    .line 25
    const/16 v0, 0xa

    iput v0, p0, Lcom/pantech/server/WriteDumpState;->MAX_COUNT:I

    .line 26
    const/16 v0, 0x78

    iput v0, p0, Lcom/pantech/server/WriteDumpState;->WAIT_TIME:I

    .line 27
    const-wide/32 v0, 0x2625a00

    iput-wide v0, p0, Lcom/pantech/server/WriteDumpState;->STORAGE_LOW:J

    return-void
.end method


# virtual methods
.method public canStartService()Z
    .locals 9

    .prologue
    .line 31
    new-instance v4, Landroid/os/StatFs;

    const-string v5, "/data"

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 32
    .local v4, "mDataFileStats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 33
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 35
    .local v0, "availableBlocks":J
    const-string v5, "WriteDumpState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "free space : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-wide/32 v5, 0x2625a00

    mul-long v7, v0, v2

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 37
    const-string v5, "WriteDumpState"

    const-string v6, "we don\'t make watchdog dumpstate because free space lower than 40MB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v5, 0x0

    .line 40
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method checkLogCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 177
    invoke-virtual {p0}, Lcom/pantech/server/WriteDumpState;->readLogCount()I

    move-result v0

    .line 178
    .local v0, "count":I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 179
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/server/WriteDumpState;->writeLogCount(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 186
    :goto_0
    return v1

    .line 181
    :cond_0
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 186
    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/server/WriteDumpState;->writeLogCount(I)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0
.end method

.method public createLog()V
    .locals 11

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 45
    .local v4, "logCount":I
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 46
    .local v5, "now":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd-HHmmss"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v0, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "df":Ljava/text/DecimalFormat;
    :try_start_0
    const-string v8, "/data/watchdogreboot"

    invoke-virtual {p0, v8}, Lcom/pantech/server/WriteDumpState;->makeFolder(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/server/WriteDumpState;->checkLogCount()I

    move-result v4

    .line 56
    const-string v8, "WriteDumpState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOG_COUNT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :goto_1
    int-to-long v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/pantech/server/WriteDumpState;->removeOldLog(Ljava/lang/String;)V

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/watchdogreboot/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v9, v4

    invoke-virtual {v0, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "szLogPath":Ljava/lang/String;
    const-string v8, "WriteDumpState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v6, Lcom/pantech/server/WriteDumpState$1;

    const-string v8, "WriteDumpState"

    invoke-direct {v6, p0, v8, v7}, Lcom/pantech/server/WriteDumpState$1;-><init>(Lcom/pantech/server/WriteDumpState;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v6, "saveDumpStateThread":Ljava/lang/Thread;
    const-string v8, "WriteDumpState"

    const-string v9, "saveDumpStateThread.start start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 96
    const-wide/32 v8, 0x1d4c0

    :try_start_2
    invoke-virtual {v6, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :goto_2
    const-string v8, "WriteDumpState"

    const-string v9, "saveDumpStateThread.join(1000 * 120) end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 57
    .end local v6    # "saveDumpStateThread":Ljava/lang/Thread;
    .end local v7    # "szLogPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "WriteDumpState"

    const-string v9, "fail to check log count"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "saveDumpStateThread":Ljava/lang/Thread;
    .restart local v7    # "szLogPath":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 98
    .local v3, "ignored":Ljava/lang/InterruptedException;
    const-string v8, "WriteDumpState"

    const-string v9, "join"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 51
    .end local v3    # "ignored":Ljava/lang/InterruptedException;
    .end local v6    # "saveDumpStateThread":Ljava/lang/Thread;
    .end local v7    # "szLogPath":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method initCountFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 123
    .local v1, "output":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/watchdogreboot/count.txt"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1    # "output":Ljava/io/FileWriter;
    .local v2, "output":Ljava/io/FileWriter;
    :try_start_1
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    move-object v1, v2

    .line 132
    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :cond_1
    throw v3

    .line 129
    .end local v1    # "output":Ljava/io/FileWriter;
    .restart local v2    # "output":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    goto :goto_2

    .line 126
    .end local v1    # "output":Ljava/io/FileWriter;
    .restart local v2    # "output":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "output":Ljava/io/FileWriter;
    .restart local v2    # "output":Ljava/io/FileWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method protected makeFolder(Ljava/lang/String;)Z
    .locals 5
    .param p1, "szLogPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "folder":Ljava/io/File;
    const/4 v0, 0x0

    .line 107
    .local v0, "bRet":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 109
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 115
    :goto_0
    return v2

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move v2, v0

    .line 115
    goto :goto_0
.end method

.method readLogCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    const/4 v2, 0x0

    .line 139
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/watchdogreboot/count.txt"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 146
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 151
    :cond_0
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .local v0, "count":I
    move-object v2, v3

    .line 155
    .end local v0    # "count":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tmp":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/pantech/server/WriteDumpState;->initCountFile()V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v5

    .line 152
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move-object v2, v3

    .line 153
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tmp":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 141
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method removeOldLog(Ljava/lang/String;)V
    .locals 12
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v6, Ljava/io/File;

    const-string v9, "/data/watchdogreboot"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "root":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "watchdogLogList":[Ljava/lang/String;
    const-string v4, ""

    .line 194
    .local v4, "item":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v0, v3

    .line 195
    .local v7, "temp":Ljava/lang/String;
    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "firstUnderBar":I
    if-lez v2, :cond_2

    .line 197
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 198
    move-object v4, v7

    .line 204
    .end local v2    # "firstUnderBar":I
    .end local v7    # "temp":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/watchdogreboot/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 206
    const-string v9, "WriteDumpState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleted : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    return-void

    .line 194
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "firstUnderBar":I
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method writeLogCount(I)I
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 162
    .local v1, "output":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/watchdogreboot/count.txt"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "output":Ljava/io/FileWriter;
    .local v2, "output":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 173
    :cond_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return v3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/pantech/server/WriteDumpState;->initCountFile()V

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    const/4 v3, -0x1

    .line 170
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :cond_2
    throw v3

    .line 170
    .end local v1    # "output":Ljava/io/FileWriter;
    .restart local v2    # "output":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    goto :goto_2

    .line 165
    .end local v1    # "output":Ljava/io/FileWriter;
    .restart local v2    # "output":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileWriter;
    .restart local v1    # "output":Ljava/io/FileWriter;
    goto :goto_1
.end method
