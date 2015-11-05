.class final Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
.super Ljava/lang/Object;
.source "QcrilMsgTunnelIfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageRequestAsync"
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->arg1:Ljava/lang/Object;

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->arg2:Ljava/lang/Object;

    .line 158
    return-void
.end method
