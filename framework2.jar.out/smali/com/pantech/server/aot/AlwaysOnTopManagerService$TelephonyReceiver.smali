.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TelephonyReceiver"
.end annotation


# instance fields
.field final ACCEPT_CONTENT_URI:Landroid/net/Uri;

.field final AUTHORITY:Ljava/lang/String;

.field final KEY_CM_CALL_ACCEPT_NUMBER_COUNT:Ljava/lang/String;

.field final KEY_CM_CALL_ACCEPT_REJECT:Ljava/lang/String;

.field final KEY_CM_CALL_ACCEPT_REJECT_MODE:Ljava/lang/String;

.field final KEY_CM_CALL_BLOCK_MODE:Ljava/lang/String;

.field final KEY_CM_CALL_BLOCK_REPEATED_CALL:Ljava/lang/String;

.field final KEY_CM_CALL_REJECT_NUMBER_COUNT:Ljava/lang/String;

.field final REJECT_CONTENT_URI:Landroid/net/Uri;

.field final SKYCALLMODE_CLASS_NAME:Ljava/lang/String;

.field final SKYCALLREJECTNUMBER_CLASS_NAME:Ljava/lang/String;

.field final SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1

    .prologue
    .line 357
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 358
    const-string v0, "com.pantech.providers.skysettings.SKYSystem"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

    .line 359
    const-string v0, "com.pantech.providers.skysettings.SKYCallmode"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->SKYCALLMODE_CLASS_NAME:Ljava/lang/String;

    .line 360
    const-string v0, "com.pantech.providers.skysettings.CallRejectNumber"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->SKYCALLREJECTNUMBER_CLASS_NAME:Ljava/lang/String;

    .line 362
    const-string v0, "accept_and_reject_mode"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_ACCEPT_REJECT_MODE:Ljava/lang/String;

    .line 363
    const-string v0, "accept_and_reject"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_ACCEPT_REJECT:Ljava/lang/String;

    .line 364
    const-string v0, "accept_NUMBER_count"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_ACCEPT_NUMBER_COUNT:Ljava/lang/String;

    .line 365
    const-string v0, "reject_NUMBER_count"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_REJECT_NUMBER_COUNT:Ljava/lang/String;

    .line 367
    const-string v0, "callreject"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->AUTHORITY:Ljava/lang/String;

    .line 368
    const-string v0, "content://callreject/reject"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 369
    const-string v0, "content://callreject/accept"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->ACCEPT_CONTENT_URI:Landroid/net/Uri;

    .line 373
    const-string v0, "block_mode"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_BLOCK_MODE:Ljava/lang/String;

    .line 374
    const-string v0, "block_repeated_call"

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->KEY_CM_CALL_BLOCK_REPEATED_CALL:Ljava/lang/String;

    return-void
.end method

.method private RemoveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "NumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 851
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatNumber:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 855
    :cond_1
    return-void
.end method

.method private SaveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 2
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, "NumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->removeFiveMinute(Ljava/util/ArrayList;J)V

    .line 842
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;)V

    .line 843
    .local v0, "saveNumber":Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;
    iput-object p2, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatNumber:Ljava/lang/String;

    .line 844
    iput-wide p3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatTime:J

    .line 846
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method private getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 905
    const/4 v9, 0x0

    .line 906
    .local v9, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_name"

    aput-object v1, v2, v0

    const-string v0, "_value"

    aput-object v0, v2, v4

    .line 907
    .local v2, "proj":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_name= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 911
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 912
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 913
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 925
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_0
    :goto_0
    return-object v9

    .line 914
    :catch_0
    move-exception v8

    .line 915
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 918
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v0, "_name"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v0, "_value"

    invoke-virtual {v7, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v0, "_isPro"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v0, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    move-object v9, p3

    .line 925
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 925
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private isAvaiableCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 935
    sget-boolean v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->isAvaiableCallSingle(Ljava/lang/String;)Z

    move-result v0

    .line 938
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->isAvaiableCallMulti(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isAvaiableCallMulti(Ljava/lang/String;)Z
    .locals 27
    .param p1, "callnumber"    # Ljava/lang/String;

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, "CALL_MODE_OFF":I
    const/4 v4, 0x1

    .line 643
    .local v4, "COLUMN_IDX_NUMBER":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 646
    .local v9, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 650
    .local v5, "c":Landroid/database/Cursor;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 655
    .local v20, "param":[Ljava/lang/Object;
    :try_start_0
    const-string v24, "com.pantech.providers.skysettings.SKYCallmode"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 656
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_3

    .line 657
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v24, 0x0

    const-class v25, Landroid/content/ContentResolver;

    aput-object v25, v14, v24

    const/16 v24, 0x1

    const-class v25, Ljava/lang/String;

    aput-object v25, v14, v24

    .line 658
    .local v14, "integerTypes":[Ljava/lang/Class;
    const-string v24, "getInt"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 663
    .local v17, "mGetInt":Ljava/lang/reflect/Method;
    const-string v24, "com.pantech.providers.skysettings.CallRejectNumber"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 664
    if-eqz v6, :cond_4

    .line 665
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const-class v25, Landroid/content/ContentResolver;

    aput-object v25, v21, v24

    const/16 v24, 0x1

    const-class v25, Landroid/net/Uri;

    aput-object v25, v21, v24

    .line 666
    .local v21, "parameterTypes":[Ljava/lang/Class;
    const-string v24, "getCount"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 667
    .local v16, "mGetCount":Ljava/lang/reflect/Method;
    const-string v24, "readNumbers"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 683
    .local v18, "mReadNumbers":Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    :try_start_1
    aput-object v9, v20, v24

    .line 684
    const/16 v24, 0x1

    const-string v25, "block_mode"

    aput-object v25, v20, v24

    .line 685
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 686
    .local v15, "integerValue":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 688
    .local v23, "setmode":I
    const/16 v24, 0x0

    aput-object v9, v20, v24

    .line 689
    const/16 v24, 0x1

    const-string v25, "block_repeated_call"

    aput-object v25, v20, v24

    .line 690
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "integerValue":Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .line 691
    .restart local v15    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v22

    .line 702
    .end local v15    # "integerValue":Ljava/lang/Integer;
    .local v22, "repeatmode":I
    :goto_0
    if-eqz p1, :cond_8

    .line 704
    const/16 v24, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->REJECT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v25, v0

    aput-object v25, v20, v24

    .line 705
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 706
    .restart local v15    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 707
    .local v8, "count":I
    if-lez v8, :cond_0

    .line 708
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->REJECT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v25, v0

    aput-object v25, v20, v24

    .line 709
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroid/database/Cursor;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 717
    :cond_0
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 720
    :cond_1
    const/16 v24, 0x1

    :try_start_3
    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v19

    .line 724
    .local v19, "number":Ljava/lang/String;
    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 725
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_2
    const/16 v24, 0x0

    .line 791
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "count":I
    .end local v14    # "integerTypes":[Ljava/lang/Class;
    .end local v15    # "integerValue":Ljava/lang/Integer;
    .end local v16    # "mGetCount":Ljava/lang/reflect/Method;
    .end local v17    # "mGetInt":Ljava/lang/reflect/Method;
    .end local v18    # "mReadNumbers":Ljava/lang/reflect/Method;
    .end local v19    # "number":Ljava/lang/String;
    .end local v21    # "parameterTypes":[Ljava/lang/Class;
    .end local v22    # "repeatmode":I
    .end local v23    # "setmode":I
    :goto_2
    return v24

    .line 660
    .restart local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_4
    const-string v24, "AlwaysOnTopManagerService"

    const-string v25, "cls is Null!!!(SKYCallmode)"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/16 v24, 0x1

    goto :goto_2

    .line 670
    .restart local v14    # "integerTypes":[Ljava/lang/Class;
    .restart local v17    # "mGetInt":Ljava/lang/reflect/Method;
    :cond_4
    const-string v24, "AlwaysOnTopManagerService"

    const-string v25, "cls is Null!!!(CallRejectNumber)"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 671
    const/16 v24, 0x1

    goto :goto_2

    .line 674
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "integerTypes":[Ljava/lang/Class;
    .end local v17    # "mGetInt":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    .line 675
    .local v7, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v24, "AlwaysOnTopManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Class Not Found:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/16 v24, 0x1

    goto :goto_2

    .line 677
    .end local v7    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v13

    .line 678
    .local v13, "e":Ljava/lang/Exception;
    const-string v24, "AlwaysOnTopManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Class Not Found(Exception):"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/16 v24, 0x1

    goto :goto_2

    .line 693
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "integerTypes":[Ljava/lang/Class;
    .restart local v16    # "mGetCount":Ljava/lang/reflect/Method;
    .restart local v17    # "mGetInt":Ljava/lang/reflect/Method;
    .restart local v18    # "mReadNumbers":Ljava/lang/reflect/Method;
    .restart local v21    # "parameterTypes":[Ljava/lang/Class;
    :catch_2
    move-exception v13

    .line 694
    .restart local v13    # "e":Ljava/lang/Exception;
    const/16 v23, 0x0

    .line 695
    .restart local v23    # "setmode":I
    const/16 v22, 0x0

    .restart local v22    # "repeatmode":I
    goto/16 :goto_0

    .line 711
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 712
    .restart local v13    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 713
    .restart local v8    # "count":I
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_5
    const/16 v24, 0x1

    goto :goto_2

    .line 721
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "integerValue":Ljava/lang/Integer;
    :catch_4
    move-exception v13

    .line 722
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v19, ""

    .restart local v19    # "number":Ljava/lang/String;
    goto :goto_1

    .line 728
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-nez v24, :cond_1

    .line 730
    .end local v19    # "number":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 734
    .end local v8    # "count":I
    .end local v15    # "integerValue":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->isAvailableBlockAlert(Landroid/content/ContentResolver;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 735
    const/16 v24, 0x1

    goto :goto_2

    .line 738
    :cond_9
    if-lez v23, :cond_13

    .line 740
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 741
    .local v10, "current":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 743
    .local v11, "currentTime":J
    if-nez v22, :cond_a

    .line 744
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 745
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 748
    :cond_a
    if-eqz p1, :cond_11

    .line 752
    const/16 v24, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->ACCEPT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v25, v0

    aput-object v25, v20, v24

    .line 753
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 754
    .restart local v15    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 755
    .restart local v8    # "count":I
    if-lez v8, :cond_b

    .line 757
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->ACCEPT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v25, v0

    aput-object v25, v20, v24

    .line 758
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroid/database/Cursor;

    move-object v5, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 767
    :cond_b
    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 770
    :cond_c
    const/16 v24, 0x1

    :try_start_6
    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v19

    .line 775
    .restart local v19    # "number":Ljava/lang/String;
    :goto_3
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 776
    if-eqz v5, :cond_d

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_d
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 761
    .end local v8    # "count":I
    .end local v15    # "integerValue":Ljava/lang/Integer;
    .end local v19    # "number":Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 762
    .restart local v13    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 763
    .restart local v8    # "count":I
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 764
    :cond_e
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 771
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "integerValue":Ljava/lang/Integer;
    :catch_6
    move-exception v13

    .line 772
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v19, ""

    .restart local v19    # "number":Ljava/lang/String;
    goto :goto_3

    .line 780
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-nez v24, :cond_c

    .line 782
    .end local v19    # "number":Ljava/lang/String;
    :cond_10
    if-eqz v5, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 785
    .end local v8    # "count":I
    .end local v15    # "integerValue":Ljava/lang/Integer;
    :cond_11
    if-lez v22, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->isRepeatCall(Ljava/lang/String;J)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 786
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 788
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 791
    .end local v10    # "current":Ljava/util/Calendar;
    .end local v11    # "currentTime":J
    :cond_13
    const/16 v24, 0x1

    goto/16 :goto_2
.end method

.method private isAvaiableCallSingle(Ljava/lang/String;)Z
    .locals 24
    .param p1, "callnumber"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "CALL_RECEIPT_SETTING_OFF":I
    const/4 v3, 0x1

    .line 382
    .local v3, "CALL_RECEIPT_SETTING_ON":I
    const/4 v4, 0x0

    .line 383
    .local v4, "MODE_ALLOW_SPECIFIC_NUMBER":I
    const/4 v5, 0x1

    .line 384
    .local v5, "MODE_REJECT_ALL_NUMBER":I
    const/4 v6, 0x2

    .line 390
    .local v6, "MODE_REJECT_SPECIFIC_NUMBER":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 394
    .local v10, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v21, "com.pantech.providers.skysettings.SKYSystem"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 395
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_1

    .line 396
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/ContentResolver;

    aput-object v22, v18, v21

    const/16 v21, 0x1

    const-class v22, Ljava/lang/String;

    aput-object v22, v18, v21

    .line 397
    .local v18, "parameterTypes":[Ljava/lang/Class;
    const-string v21, "getInt"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 398
    .local v14, "mGetInt":Ljava/lang/reflect/Method;
    const-string v21, "getString"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 412
    .local v15, "mGetString":Ljava/lang/reflect/Method;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 417
    .local v17, "param":[Ljava/lang/Object;
    const/16 v21, 0x0

    :try_start_1
    aput-object v10, v17, v21

    .line 418
    const/16 v21, 0x1

    const-string v22, "accept_and_reject"

    aput-object v22, v17, v21

    .line 419
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 420
    .local v13, "integerValue":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 423
    .local v20, "seton":I
    const/16 v21, 0x1

    const-string v22, "accept_and_reject_mode"

    aput-object v22, v17, v21

    .line 424
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "integerValue":Ljava/lang/Integer;
    check-cast v13, Ljava/lang/Integer;

    .line 425
    .restart local v13    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v19

    .line 435
    .end local v13    # "integerValue":Ljava/lang/Integer;
    .local v19, "setmode":I
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 436
    packed-switch v19, :pswitch_data_0

    .line 485
    :cond_0
    const/16 v21, 0x1

    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "mGetInt":Ljava/lang/reflect/Method;
    .end local v15    # "mGetString":Ljava/lang/reflect/Method;
    .end local v17    # "param":[Ljava/lang/Object;
    .end local v18    # "parameterTypes":[Ljava/lang/Class;
    .end local v19    # "setmode":I
    .end local v20    # "seton":I
    :goto_1
    return v21

    .line 401
    .restart local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_2
    const-string v21, "AlwaysOnTopManagerService"

    const-string v22, "cls is Null!!!(SKYSystem)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 402
    const/16 v21, 0x1

    goto :goto_1

    .line 404
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    .line 405
    .local v8, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v21, "AlwaysOnTopManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Class Not Found:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v21, 0x1

    goto :goto_1

    .line 407
    .end local v8    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v11

    .line 408
    .local v11, "e":Ljava/lang/Exception;
    const-string v21, "AlwaysOnTopManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Class Not Found(Exception):"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/16 v21, 0x1

    goto :goto_1

    .line 427
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "mGetInt":Ljava/lang/reflect/Method;
    .restart local v15    # "mGetString":Ljava/lang/reflect/Method;
    .restart local v17    # "param":[Ljava/lang/Object;
    .restart local v18    # "parameterTypes":[Ljava/lang/Class;
    :catch_2
    move-exception v11

    .line 428
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    .line 429
    .restart local v20    # "seton":I
    const/16 v19, 0x0

    .restart local v19    # "setmode":I
    goto :goto_0

    .line 438
    .end local v11    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/16 v21, 0x0

    goto :goto_1

    .line 441
    :pswitch_1
    if-eqz p1, :cond_3

    .line 444
    const/16 v21, 0x1

    :try_start_3
    const-string v22, "accept_NUMBER_count"

    aput-object v22, v17, v21

    .line 445
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 446
    .restart local v13    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 448
    .local v9, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_3

    .line 450
    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "accept_NUMBER_list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v12, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 451
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 453
    .local v16, "number":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v21

    if-eqz v21, :cond_2

    .line 454
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 448
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 456
    .end local v9    # "count":I
    .end local v12    # "i":I
    .end local v13    # "integerValue":Ljava/lang/Integer;
    .end local v16    # "number":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 457
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v21, "AlwaysOnTopManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 463
    :pswitch_2
    if-eqz p1, :cond_5

    .line 466
    const/16 v21, 0x1

    :try_start_4
    const-string v22, "reject_NUMBER_count"

    aput-object v22, v17, v21

    .line 467
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 468
    .restart local v13    # "integerValue":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 470
    .restart local v9    # "count":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v9, :cond_5

    .line 472
    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reject_NUMBER_list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v12, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 473
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 475
    .restart local v16    # "number":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v21

    if-eqz v21, :cond_4

    .line 476
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 470
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 478
    .end local v9    # "count":I
    .end local v12    # "i":I
    .end local v13    # "integerValue":Ljava/lang/Integer;
    .end local v16    # "number":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 479
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v21, "AlwaysOnTopManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isAvailableBlockAlert(Landroid/content/ContentResolver;)Z
    .locals 17
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 867
    const-string v14, "blk_al"

    const-string v15, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 868
    const-string v14, "blk_resv_always"

    const-string v15, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 870
    const/4 v14, 0x1

    .line 901
    :goto_0
    return v14

    .line 873
    :cond_0
    const-string v14, "blk_strt_h"

    const-string v15, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 874
    .local v10, "startTimeH":Ljava/lang/String;
    const-string v14, "blk_strt_m"

    const-string v15, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 875
    .local v11, "startTimeM":Ljava/lang/String;
    const-string v14, "blk_stop_h"

    const-string v15, "5"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 876
    .local v12, "stopTimeH":Ljava/lang/String;
    const-string v14, "blk_stop_m"

    const-string v15, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 878
    .local v13, "stopTimeM":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v10    # "startTimeH":Ljava/lang/String;
    :cond_1
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v11    # "startTimeM":Ljava/lang/String;
    :cond_2
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 880
    .local v9, "startTime":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v12    # "stopTimeH":Ljava/lang/String;
    :cond_3
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .end local v13    # "stopTimeM":Ljava/lang/String;
    :cond_4
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 883
    .local v4, "endTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 884
    .local v3, "date":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v14, "HHmm"

    invoke-direct {v8, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 885
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "currTime":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 890
    .local v5, "nCurrTime":I
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 891
    .local v7, "nStartTime":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 893
    .local v6, "nEndTime":I
    if-le v7, v6, :cond_5

    if-le v7, v5, :cond_6

    if-gt v6, v5, :cond_6

    :cond_5
    if-gt v7, v5, :cond_7

    if-le v6, v5, :cond_7

    .line 896
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 901
    .end local v2    # "currTime":Ljava/lang/String;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "endTime":Ljava/lang/String;
    .end local v5    # "nCurrTime":I
    .end local v6    # "nEndTime":I
    .end local v7    # "nStartTime":I
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "startTime":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private isRepeatCall(Ljava/lang/String;J)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "currentTime"    # J

    .prologue
    const-wide/32 v9, 0x493e0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 795
    if-nez p1, :cond_0

    move v4, v5

    .line 835
    :goto_0
    return v4

    .line 798
    :cond_0
    const/4 v1, 0x0

    .line 801
    .local v1, "nCount":I
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 802
    .local v3, "size_four":I
    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 803
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 806
    :cond_1
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 807
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-wide v7, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatTime:J

    sub-long v7, p2, v7

    cmp-long v4, v7, v9

    if-gez v4, :cond_2

    .line 809
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->RemoveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;)V

    move v4, v6

    .line 810
    goto :goto_0

    .line 806
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 815
    :cond_3
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 816
    .local v2, "size":I
    const/16 v4, 0x32

    if-le v2, v4, :cond_4

    .line 817
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 820
    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 821
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-wide v7, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatTime:J

    sub-long v7, p2, v7

    cmp-long v4, v7, v9

    if-gez v4, :cond_5

    .line 823
    add-int/lit8 v1, v1, 0x1

    .line 826
    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 827
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->RemoveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 828
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->SaveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;J)V

    move v4, v6

    .line 829
    goto/16 :goto_0

    .line 820
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 833
    :cond_7
    sget-object v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->SaveRepeatCall(Ljava/util/ArrayList;Ljava/lang/String;J)V

    move v4, v5

    .line 835
    goto/16 :goto_0
.end method

.method private removeFiveMinute(Ljava/util/ArrayList;J)V
    .locals 5
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "NumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 859
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;

    iget-wide v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;->mRepeatTime:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 860
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 858
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 863
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 946
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 948
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, "mPhoneState":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v8, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 951
    :try_start_0
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 952
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v7}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 953
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 955
    :cond_0
    const-string v7, "incoming_number"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, "phoneNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-direct {p0, v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->isAvaiableCall(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 958
    monitor-exit v8

    .line 1034
    .end local v4    # "mPhoneState":Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 961
    .restart local v4    # "mPhoneState":Ljava/lang/String;
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 962
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 963
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 964
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 965
    .local v6, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 966
    .local v3, "id":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v7, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 967
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->saveState(Ljava/lang/String;)V

    .line 968
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_1

    .line 1011
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    .end local v6    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 974
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 1011
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :cond_5
    :goto_2
    monitor-exit v8

    goto :goto_0

    .line 976
    :cond_6
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 977
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    goto :goto_2

    .line 992
    :cond_7
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 993
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v7}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 994
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 996
    :cond_8
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 997
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 998
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 999
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1000
    .restart local v6    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1001
    .restart local v3    # "id":Ljava/lang/String;
    if-eqz v6, :cond_9

    const-string v7, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1002
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->saveState(Ljava/lang/String;)V

    .line 1003
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v7, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_3

    .line 1009
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_a
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1013
    .end local v4    # "mPhoneState":Ljava/lang/String;
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.phone.action.ENDCALL_SETMODE_CHANGE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1014
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iput-boolean v8, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 1015
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1016
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1017
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1018
    .restart local v3    # "id":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 1020
    const-string v9, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1021
    const-string v9, "persist.launcher2.aotfolder"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v7

    .line 1022
    .local v0, "aotFolderExist":Z
    :goto_5
    if-nez v0, :cond_e

    .line 1023
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .end local v0    # "aotFolderExist":Z
    :cond_d
    move v0, v8

    .line 1021
    goto :goto_5

    .line 1027
    :cond_e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1028
    .restart local v6    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v6}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAotAppBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_4
.end method
