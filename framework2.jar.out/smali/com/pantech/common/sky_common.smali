.class public Lcom/pantech/common/sky_common;
.super Ljava/lang/Object;
.source "sky_common.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky_common"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "sky_common"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static native sky_common_cmd_java(Ljava/lang/String;)I
.end method

.method static native sky_common_set_property_java(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native sky_common_signal_to_process_java(II)I
.end method


# virtual methods
.method public get_pid_from_process_name(Ljava/lang/String;)I
    .locals 20
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v17, "sky_common"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "get_pid_from_process_name (pname = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v14, 0x0

    .line 61
    .local v14, "result":Ljava/lang/Integer;
    const/4 v15, 0x0

    .line 64
    .local v15, "ret":I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    const-string v18, "ps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 65
    .local v9, "p":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 66
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v16, "sb":Ljava/lang/StringBuffer;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [C

    .line 71
    .local v2, "buf":[C
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "ch":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    .line 73
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v2    # "buf":[C
    .end local v3    # "ch":I
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v9    # "p":Ljava/lang/Process;
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 90
    .local v6, "ex":Ljava/lang/Exception;
    const-string v17, "sky_common"

    const-string v18, "get_pid_from_process_name() Exception"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 v17, -0x1

    .line 101
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_1
    return v17

    .line 76
    .restart local v2    # "buf":[C
    .restart local v3    # "ch":I
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "p":Ljava/lang/Process;
    .restart local v16    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v10, "pMap":Ljava/util/HashMap;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "processLinesAr":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 80
    aget-object v17, v12, v7

    const-string v18, "[\\s]+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "comps":[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 78
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 82
    :cond_1
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 83
    .local v13, "process_id":Ljava/lang/Integer;
    const/16 v17, 0x8

    aget-object v11, v4, v17

    .line 84
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 87
    .end local v4    # "comps":[Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "process_id":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    move/from16 v17, v15

    .line 101
    goto :goto_1

    .line 96
    :catch_1
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v17, "sky_common"

    const-string v18, "get_pid_from_process_name() NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v17, -0x1

    goto :goto_1
.end method

.method public sky_common_cmd(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "sky_common"

    const-string v1, "sky_common_cmd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/pantech/common/sky_common;->sky_common_cmd_java(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sky_common_set_property(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "sky_common"

    const-string v1, "sky_common_set_property()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1, p2}, Lcom/pantech/common/sky_common;->sky_common_set_property_java(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sky_common_signal_to_process(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "signal"    # I

    .prologue
    .line 48
    const-string v0, "sky_common"

    const-string v1, "sky_common_signal_to_process()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/pantech/common/sky_common;->sky_common_signal_to_process_java(II)I

    move-result v0

    goto :goto_0
.end method
