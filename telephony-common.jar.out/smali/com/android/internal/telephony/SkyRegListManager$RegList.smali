.class Lcom/android/internal/telephony/SkyRegListManager$RegList;
.super Ljava/lang/Object;
.source "SkyRegListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SkyRegListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegList"
.end annotation


# instance fields
.field event:Ljava/lang/String;

.field regList:Landroid/os/RegistrantList;

.field final synthetic this$0:Lcom/android/internal/telephony/SkyRegListManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/SkyRegListManager$RegList;->this$0:Lcom/android/internal/telephony/SkyRegListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    .line 199
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    .line 200
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
