.class public Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;
.super Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;
.source "SkyDataConInterfaceManager.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SkyDataConInterface"


# instance fields
.field private mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 1
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;-><init>()V

    .line 25
    new-instance v0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;-><init>(Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->publish()V

    .line 38
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "iskydataconnection"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDataConnectionMode()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataConnectionMode()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataSuspendState()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataSuspendState()I

    move-result v0

    return v0
.end method

.method public getLteRoamingMode()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteRoamingMode()Z

    move-result v0

    return v0
.end method

.method public getPolicyDataEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPolicyDataEnabled()Z

    move-result v0

    return v0
.end method

.method public setDataConnectionMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataConnectionMode(Z)V

    .line 67
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public setDunService(Z)V
    .locals 1
    .param p1, "isDunService"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDunState(Z)V

    .line 57
    return-void
.end method

.method public setLteRoamingMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteRoamingMode(Z)V

    .line 87
    return-void
.end method

.method public setSuspendResumeDataCall(Z)Z
    .locals 1
    .param p1, "suspend"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setSuspendResumeDataCall(Z)Z

    move-result v0

    return v0
.end method
