.class Lcom/android/internal/telephony/gsm/SkyEventNotifier$1;
.super Landroid/os/Handler;
.source "SkyEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyEventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyEventNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyEventNotifier;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$1;->this$0:Lcom/android/internal/telephony/gsm/SkyEventNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_UNKNOWN:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 150
    .local v2, "event":Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->values()[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 152
    .local v1, "e":Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->ordinal()I

    move-result v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_0

    .line 154
    move-object v2, v1

    .line 150
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "e":Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$1;->this$0:Lcom/android/internal/telephony/gsm/SkyEventNotifier;

    # getter for: Lcom/android/internal/telephony/gsm/SkyEventNotifier;->p:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SkyEventNotifier;->access$000(Lcom/android/internal/telephony/gsm/SkyEventNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 159
    const-string v5, "SKY EVENT NOTI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->notify(Landroid/os/Message;)V

    .line 161
    return-void
.end method
