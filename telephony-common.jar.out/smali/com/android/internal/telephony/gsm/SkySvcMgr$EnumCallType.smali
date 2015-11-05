.class public final enum Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;
.super Ljava/lang/Enum;
.source "SkySvcMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySvcMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumCallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum DUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum EMERGENCY:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum IDLE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum KUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum MMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum SMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum SUPS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum VOICE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

.field public static final enum VT:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->IDLE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->VOICE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "EMERGENCY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->EMERGENCY:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "SUPS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->SUPS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "VT"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->VT:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "DUN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->DUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "KUN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->KUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "MMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->MMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    const-string v1, "SMS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->SMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->IDLE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->VOICE:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->EMERGENCY:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->SUPS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->VT:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->DUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->KUN:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->MMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->SMS:Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkySvcMgr$EnumCallType;

    return-object v0
.end method
