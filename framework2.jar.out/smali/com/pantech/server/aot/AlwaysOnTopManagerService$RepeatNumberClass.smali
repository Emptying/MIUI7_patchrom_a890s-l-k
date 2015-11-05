.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatNumberClass"
.end annotation


# instance fields
.field mRepeatNumber:Ljava/lang/String;

.field mRepeatTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;-><init>()V

    return-void
.end method
