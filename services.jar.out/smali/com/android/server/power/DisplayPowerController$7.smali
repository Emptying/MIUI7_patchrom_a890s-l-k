.class Lcom/android/server/power/DisplayPowerController$7;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1466
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 1441
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1443
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 1444
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 1446
    .local v1, "positive":Z
    :cond_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1447
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sensor event : positive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timestamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last timestamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->oem_mLastStampForProximitySensor:J
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$1100(Lcom/android/server/power/DisplayPowerController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->oem_mLastStampForProximitySensor:J
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1100(Lcom/android/server/power/DisplayPowerController;)J

    move-result-wide v4

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1453
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/android/server/power/DisplayPowerController;->oem_mLastStampForProximitySensor:J
    invoke-static {v4, v5, v6}, Lcom/android/server/power/DisplayPowerController;->access$1102(Lcom/android/server/power/DisplayPowerController;J)J

    .line 1459
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$7;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;JZ)V

    .line 1461
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_2
    return-void
.end method
