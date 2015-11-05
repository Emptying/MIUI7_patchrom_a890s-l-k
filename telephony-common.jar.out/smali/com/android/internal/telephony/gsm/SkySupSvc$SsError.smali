.class public Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;
.super Ljava/lang/Object;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySupSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SsError"
.end annotation


# instance fields
.field public errorCode:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public errorCodeTag:I

.field public errorType:I

.field public present:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkySupSvc;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SkySupSvc;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->this$0:Lcom/android/internal/telephony/gsm/SkySupSvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNKNOWN_ERROR_CODE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorCode:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->present:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCodeTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorCodeTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorCode:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
