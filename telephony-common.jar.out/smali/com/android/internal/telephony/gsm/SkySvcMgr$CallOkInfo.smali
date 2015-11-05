.class public Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;
.super Ljava/lang/Object;
.source "SkySvcMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySvcMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallOkInfo"
.end annotation


# instance fields
.field public cause:Ljava/lang/String;

.field public isCallOk:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkySvcMgr;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SkySvcMgr;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->this$0:Lcom/android/internal/telephony/gsm/SkySvcMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallOkInfo isCallOk ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->isCallOk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySvcMgr$CallOkInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
