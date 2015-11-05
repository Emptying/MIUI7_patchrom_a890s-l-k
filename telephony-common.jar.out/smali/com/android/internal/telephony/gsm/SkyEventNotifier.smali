.class public Lcom/android/internal/telephony/gsm/SkyEventNotifier;
.super Ljava/lang/Object;
.source "SkyEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    }
.end annotation


# static fields
.field private static final NON_STICKY:I = 0x0

.field private static final STICKY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SKY EVENT NOTI"


# instance fields
.field private h:Landroid/os/Handler;

.field private p:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v4, Lcom/android/internal/telephony/gsm/SkyEventNotifier$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$1;-><init>(Lcom/android/internal/telephony/gsm/SkyEventNotifier;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier;->h:Landroid/os/Handler;

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier;->p:Lcom/android/internal/telephony/Phone;

    .line 173
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->values()[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 175
    .local v1, "e":Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->eventName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->eventName:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForSkyEvent(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/String;)V

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "e":Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SkyEventNotifier;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyEventNotifier;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier;->p:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method
