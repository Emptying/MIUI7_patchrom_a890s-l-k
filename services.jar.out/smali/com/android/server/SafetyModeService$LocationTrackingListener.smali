.class Lcom/android/server/SafetyModeService$LocationTrackingListener;
.super Ljava/lang/Object;
.source "SafetyModeService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationTrackingListener"
.end annotation


# static fields
.field private static final CRITERION_BETTER_DELTA_TIME:J = 0x2bf20L

.field private static final MAX_ACCURACY:F = 1500.0f

.field private static final MIN_ACCURACY:F = 20.0f

.field private static final MIN_DISTANCE:F = 10.0f


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/SafetyModeService;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SafetyModeService;
    .param p2, "x1"    # Lcom/android/server/SafetyModeService$1;

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService$LocationTrackingListener;-><init>(Lcom/android/server/SafetyModeService;)V

    return-void
.end method

.method private isGPSProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 732
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 12
    .param p1, "previousLocation"    # Landroid/location/Location;
    .param p2, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    const/4 v8, 0x1

    .line 728
    :goto_0
    return v8

    .line 687
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 689
    .local v1, "currentAccuracy":F
    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    const v8, 0x44bb8000    # 1500.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    .line 690
    const/4 v8, 0x0

    goto :goto_0

    .line 691
    :cond_1
    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_2

    .line 693
    const/4 v8, 0x1

    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    sub-float v8, v1, v8

    float-to-int v0, v8

    .line 698
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_3

    const/4 v2, 0x1

    .line 699
    .local v2, "isLessAccurate":Z
    :goto_1
    if-gez v0, :cond_4

    const/4 v3, 0x1

    .line 700
    .local v3, "isMoreAccurate":Z
    :goto_2
    const/16 v8, 0xc8

    if-le v0, v8, :cond_5

    const/4 v4, 0x1

    .line 704
    .local v4, "isSignificantlyLessAccurate":Z
    :goto_3
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 705
    .local v6, "timeDelta":J
    const-wide/32 v8, 0x2bf20

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    const/4 v5, 0x1

    .line 709
    .local v5, "isSignificantlyNewer":Z
    :goto_4
    if-eqz v5, :cond_7

    .line 710
    const/4 v8, 0x1

    goto :goto_0

    .line 698
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v4    # "isSignificantlyLessAccurate":Z
    .end local v5    # "isSignificantlyNewer":Z
    .end local v6    # "timeDelta":J
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 699
    .restart local v2    # "isLessAccurate":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 700
    .restart local v3    # "isMoreAccurate":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 705
    .restart local v4    # "isSignificantlyLessAccurate":Z
    .restart local v6    # "timeDelta":J
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 718
    .restart local v5    # "isSignificantlyNewer":Z
    :cond_7
    if-eqz v3, :cond_8

    .line 719
    const/4 v8, 0x1

    goto :goto_0

    .line 720
    :cond_8
    if-nez v2, :cond_9

    .line 721
    const/4 v8, 0x1

    goto :goto_0

    .line 722
    :cond_9
    if-nez v4, :cond_a

    if-eqz v5, :cond_a

    .line 724
    const/4 v8, 0x1

    goto :goto_0

    .line 725
    :cond_a
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/SafetyModeService$LocationTrackingListener;->isGPSProvider(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 726
    const/4 v8, 0x1

    goto :goto_0

    .line 728
    :cond_b
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 635
    if-nez p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    iget-object v0, v0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SafetyModeService$LocationTrackingListener;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->setBestLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/SafetyModeService;->access$500(Lcom/android/server/SafetyModeService;Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 649
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SafetyModeService;->handleGpsProviderState(Z)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SafetyModeService;->handleNetworkProviderState(Z)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 662
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SafetyModeService;->handleGpsProviderState(Z)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationTrackingListener;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SafetyModeService;->handleNetworkProviderState(Z)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 678
    return-void
.end method
