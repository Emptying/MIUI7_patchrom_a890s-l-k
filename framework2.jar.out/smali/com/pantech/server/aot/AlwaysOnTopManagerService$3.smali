.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1278
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "onAccuracyChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    if-nez v14, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    .line 1202
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1203
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    .line 1205
    .local v12, "type":I
    const/4 v9, 0x0

    .line 1206
    .local v9, "sum":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->getCurrentRotation(Landroid/content/Context;)I

    move-result v4

    .line 1209
    .local v4, "rotation":I
    packed-switch v4, :pswitch_data_0

    .line 1219
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v13, v14, v15

    .line 1222
    .local v13, "x":F
    :goto_1
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3dcccccd    # 0.1f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 1223
    const/4 v13, 0x0

    .line 1225
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    if-nez v14, :cond_3

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/16 v15, 0xa

    new-array v15, v15, [F

    # setter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$202(Lcom/pantech/server/aot/AlwaysOnTopManagerService;[F)[F

    .line 1228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    array-length v1, v14

    .line 1230
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 1231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v3, -0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1230
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1212
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v13    # "x":F
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v13, v14, v15

    .line 1213
    .restart local v13    # "x":F
    goto :goto_1

    .line 1216
    .end local v13    # "x":F
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v13, v14, v15

    .line 1217
    .restart local v13    # "x":F
    goto :goto_1

    .line 1233
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    array-length v1, v14

    .line 1235
    .restart local v1    # "count":I
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 1236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    aget v14, v14, v3

    add-float/2addr v9, v14

    .line 1237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static/range {v16 .. v16}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v16

    aget v16, v16, v3

    aput v16, v14, v15

    .line 1235
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1241
    :cond_4
    add-float/2addr v9, v13

    .line 1242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v1, -0x1

    aput v13, v14, v15

    .line 1245
    const/4 v2, 0x0

    .line 1246
    .local v2, "flip_recognize":Z
    if-nez v4, :cond_7

    .line 1247
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, -0x3fc00000    # -3.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    const/4 v2, 0x1

    .line 1253
    :cond_5
    :goto_4
    if-eqz v2, :cond_0

    .line 1254
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_b

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    const/4 v15, 0x0

    aput v15, v14, v3

    .line 1254
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1247
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 1248
    :cond_7
    const/4 v14, 0x1

    if-ne v4, v14, :cond_9

    .line 1249
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, 0x40800000    # 4.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    const/4 v2, 0x1

    :goto_6
    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 1250
    :cond_9
    const/4 v14, 0x3

    if-ne v4, v14, :cond_5

    .line 1251
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, -0x3f800000    # -4.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    const/4 v2, 0x1

    :goto_7
    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 1256
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    if-eqz v14, :cond_0

    .line 1257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1258
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$300(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)J

    move-result-wide v14

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 1261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "rear_touch_open_status_bar"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1265
    .local v8, "statusEnable":I
    :goto_8
    if-eqz v8, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v15, "statusbar"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    .line 1268
    .local v7, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v7}, Landroid/app/StatusBarManager;->toggleStatusBarExpand()V

    .line 1269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # setter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J
    invoke-static {v14, v10, v11}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$302(Lcom/pantech/server/aot/AlwaysOnTopManagerService;J)J

    goto/16 :goto_0

    .line 1262
    .end local v7    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v8    # "statusEnable":I
    :catch_0
    move-exception v6

    .line 1263
    .local v6, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v8, 0x1

    .restart local v8    # "statusEnable":I
    goto :goto_8

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
