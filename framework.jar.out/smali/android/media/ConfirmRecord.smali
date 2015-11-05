.class public Landroid/media/ConfirmRecord;
.super Ljava/lang/Object;
.source "ConfirmRecord.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final LOCAL_VOICE_SEARCH_STATE_FILE_PATH:Ljava/lang/String; = "/proc/lvs_state"

.field public static final OFFHOOK_REQUEST:Ljava/lang/String; = "offhook_request"

.field public static final OFFHOOK_RESPONSE:Ljava/lang/String; = "offhook_response"

.field public static final RUN_REQUEST:Ljava/lang/String; = "run_request"

.field public static final RUN_RESPONSE:Ljava/lang/String; = "run_response"

.field public static final STOP_REQUEST:Ljava/lang/String; = "stop_request"

.field public static final STOP_RESPONSE:Ljava/lang/String; = "stop_response"

.field public static final USE_PROCFS:Z = true

.field public static final WAIT_INTERVAL:I = 0x5

.field public static final WAIT_REQUEST:Ljava/lang/String; = "wait_request"

.field public static final WAIT_RESPONSE:Ljava/lang/String; = "wait_response"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mLocalVoiceSearchState:Ljava/lang/String;

.field private mLocalVoiceSearchStateObserver:Landroid/os/FileObserver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "ConfirmRecord"

    iput-object v0, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "stop_request"

    iput-object v0, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/media/ConfirmRecord$1;

    const-string v1, "/proc/lvs_state"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Landroid/media/ConfirmRecord$1;-><init>(Landroid/media/ConfirmRecord;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchStateObserver:Landroid/os/FileObserver;

    .line 72
    iput-object p1, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/media/ConfirmRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/ConfirmRecord;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/ConfirmRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/ConfirmRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/ConfirmRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/ConfirmRecord;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 78
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [C

    .line 80
    .local v0, "buffer":[C
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    .line 81
    iget-object v3, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read!! read_data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 86
    .end local v0    # "buffer":[C
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readProc(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v7, "sbstdOut":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 104
    .local v6, "runtime":Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 105
    .local v4, "proc":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 108
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 109
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 111
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 113
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 117
    :cond_0
    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 121
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "read":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 124
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 127
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v5    # "read":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 128
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v8, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "proc read. data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 126
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "read":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 131
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 129
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v5    # "read":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 127
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public waitForResponse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "req_message"    # Ljava/lang/String;
    .param p2, "res_message"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 137
    const-string v4, "1"

    const-string v5, "dev.pantech.voice"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait for local-voice-search.request_message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reponse_message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    .line 145
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/lvs_state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1}, Landroid/media/ConfirmRecord;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchStateObserver:Landroid/os/FileObserver;

    invoke-virtual {v4}, Landroid/os/FileObserver;->startWatching()V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    .local v2, "start_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 151
    .local v0, "elapsed_time":J
    :goto_0
    iget-object v4, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    const-wide/16 v4, 0x5

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 157
    cmp-long v4, p3, v0

    if-gez v4, :cond_1

    .line 158
    iget-object v4, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "timeout for local-voice-search"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v4, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchStateObserver:Landroid/os/FileObserver;

    invoke-virtual {v4}, Landroid/os/FileObserver;->stopWatching()V

    .line 169
    .end local v0    # "elapsed_time":J
    .end local v2    # "start_time":J
    :goto_2
    return-void

    .line 161
    .restart local v0    # "elapsed_time":J
    .restart local v2    # "start_time":J
    :cond_1
    iget-object v4, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", elapsed_time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "wait for local-voice-search. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v0    # "elapsed_time":J
    .end local v2    # "start_time":J
    :cond_2
    iget-object v4, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")The Local-Voice-Search application did not run."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    .restart local v0    # "elapsed_time":J
    .restart local v2    # "start_time":J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "file_content"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 93
    .local v1, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 95
    iget-object v2, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write!! write_data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), Cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
