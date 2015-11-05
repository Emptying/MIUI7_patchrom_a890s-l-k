.class public Lcom/android/internal/telephony/QcrilMsgTunnelService;
.super Landroid/app/Service;
.source "QcrilMsgTunnelService.java"


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final TAG:Ljava/lang/String; = "QcrilMsgTunnelService"

.field static mContext:Landroid/content/Context;

.field private static mTunnelIface:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    const-string v0, "QcrilMsgTunnelService"

    const-string v1, "QcrilMsgTunnelService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object p1, Lcom/android/internal/telephony/QcrilMsgTunnelService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelService;)V

    sput-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelService;->mTunnelIface:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    .line 68
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v0, "QcrilMsgTunnelService"

    const-string v1, "Returning mHookIface for QcrilMsgTunnelService binding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelService;->mTunnelIface:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    return-object v0
.end method
