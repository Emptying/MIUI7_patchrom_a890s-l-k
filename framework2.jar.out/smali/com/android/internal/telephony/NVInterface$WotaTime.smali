.class public Lcom/android/internal/telephony/NVInterface$WotaTime;
.super Ljava/lang/Object;
.source "NVInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NVInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WotaTime"
.end annotation


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public second:I

.field final synthetic this$0:Lcom/android/internal/telephony/NVInterface;

.field public timezone:I

.field public year:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/NVInterface;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/NVInterface$WotaTime;->this$0:Lcom/android/internal/telephony/NVInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
