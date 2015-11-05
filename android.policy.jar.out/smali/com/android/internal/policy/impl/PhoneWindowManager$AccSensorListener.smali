.class Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccSensorListener"
.end annotation


# instance fields
.field mAccSensor:Landroid/hardware/Sensor;

.field mAccSensorManager:Landroid/hardware/SensorManager;

.field mMovingSensorEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 8395
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8391
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mMovingSensorEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;

    .line 8392
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensorManager:Landroid/hardware/SensorManager;

    .line 8393
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensor:Landroid/hardware/Sensor;

    .line 8396
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensorManager:Landroid/hardware/SensorManager;

    .line 8397
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensor:Landroid/hardware/Sensor;

    .line 8398
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mAccSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 8399
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;->mMovingSensorEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MovingSensorEventListener;

    .line 8401
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 8390
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$AccSensorListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 8437
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 8409
    return-void
.end method
