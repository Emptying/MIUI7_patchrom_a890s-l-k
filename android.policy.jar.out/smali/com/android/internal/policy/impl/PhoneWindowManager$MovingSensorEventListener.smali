.class Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingSensorEventListener"
.end annotation


# static fields
.field private static final SHAKE_THRESHOLD:I = 0x1f4

.field private static final THRESHOLD:I = 0x5


# instance fields
.field currentMove:I

.field mLastMove:I

.field private speed:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8331
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 8387
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v8, 0x3e4ccccc    # 0.19999999f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 8342
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 8343
    const v0, 0x3f4ccccd    # 0.8f

    .line 8345
    .local v0, "alpha":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->stopSensing:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 8346
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v4

    aput v5, v4, v7

    .line 8347
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v4

    aput v5, v4, v3

    .line 8348
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v3

    aput v5, v3, v2

    .line 8349
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastZ:F
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3902(Lcom/android/internal/policy/impl/PhoneWindowManager;F)F

    .line 8350
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->detectMovement:J
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;J)J

    .line 8351
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->mLastMove:I

    .line 8383
    .end local v0    # "alpha":F
    :cond_0
    :goto_0
    return-void

    .line 8355
    .restart local v0    # "alpha":F
    :cond_1
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v4, v7

    .line 8356
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v3

    mul-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v4, v3

    .line 8357
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v2

    mul-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 8359
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->linear_acc:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100()[F

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v7

    sub-float/2addr v5, v6

    aput v5, v4, v7

    .line 8360
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->linear_acc:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100()[F

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v3

    sub-float/2addr v5, v6

    aput v5, v4, v3

    .line 8361
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->linear_acc:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100()[F

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v2

    sub-float/2addr v5, v6

    aput v5, v4, v2

    .line 8363
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->linear_acc:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100()[F

    move-result-object v4

    aget v4, v4, v2

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->z:F

    .line 8365
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorEventListener :  event.values[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8366
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorEventListener :  gravity[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gravity:[F
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800()[F

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8367
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorEventListener :  z = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->z:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastZ = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastZ:F
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8369
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->z:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastZ:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 8370
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->z:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastZ:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v2, v3

    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->currentMove:I

    .line 8371
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->currentMove:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->mLastMove:I

    if-eq v2, v4, :cond_4

    .line 8372
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->currentMove:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->mLastMove:I

    .line 8373
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->detectMovement:J
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->stopSensing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8374
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PEN_LOST_CAUTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8375
    .local v1, "cautionIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8376
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->stopSensing:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8378
    .end local v1    # "cautionIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # operator++ for: Lcom/android/internal/policy/impl/PhoneWindowManager;->detectMovement:J
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4008(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    .line 8381
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;->z:F

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastZ:F
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3902(Lcom/android/internal/policy/impl/PhoneWindowManager;F)F

    goto/16 :goto_0
.end method
