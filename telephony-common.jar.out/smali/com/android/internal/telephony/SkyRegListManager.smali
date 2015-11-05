.class public Lcom/android/internal/telephony/SkyRegListManager;
.super Ljava/lang/Object;
.source "SkyRegListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SkyRegListManager$1;,
        Lcom/android/internal/telephony/SkyRegListManager$RegList;,
        Lcom/android/internal/telephony/SkyRegListManager$ListComparator;
    }
.end annotation


# static fields
.field private static manager:Lcom/android/internal/telephony/SkyRegListManager;


# instance fields
.field private byEvent:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/telephony/SkyRegListManager$RegList;",
            ">;"
        }
    .end annotation
.end field

.field private skyRegListArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SkyRegListManager$RegList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyRegListManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SkyRegListManager;->manager:Lcom/android/internal/telephony/SkyRegListManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager$ListComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SkyRegListManager$ListComparator;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Lcom/android/internal/telephony/SkyRegListManager$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SkyRegListManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/SkyRegListManager;->manager:Lcom/android/internal/telephony/SkyRegListManager;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/internal/telephony/SkyRegListManager$RegList;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SkyRegListManager$RegList;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V

    .line 65
    .local v0, "list":Lcom/android/internal/telephony/SkyRegListManager$RegList;
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 66
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 69
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    goto :goto_0
.end method

.method public notify([B)V
    .locals 16
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 111
    .local v4, "bBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    const/4 v12, 0x0

    .line 114
    .local v12, "strlen":I
    move-object/from16 v2, p1

    .local v2, "arr$":[B
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-byte v3, v2, v7

    .line 116
    .local v3, "b":B
    if-nez v3, :cond_1

    .line 121
    .end local v3    # "b":B
    :cond_0
    const-string v13, "SKY EVENT NOTI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pre Notifier Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p1

    array-length v13, v0

    if-lt v12, v13, :cond_2

    .line 124
    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13}, Ljava/lang/Exception;-><init>()V

    throw v13

    .line 118
    .restart local v3    # "b":B
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "b":B
    :cond_2
    new-array v5, v12, [B

    .line 127
    .local v5, "bEvent":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 129
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v6, "event":Ljava/lang/String;
    new-instance v9, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/android/internal/telephony/SkyRegListManager$RegList;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V

    .line 133
    .local v9, "list":Lcom/android/internal/telephony/SkyRegListManager$RegList;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v13, v9, v14}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v10

    .line 134
    .local v10, "location":I
    const/4 v13, -0x1

    if-gt v10, v13, :cond_3

    .line 135
    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13}, Ljava/lang/Exception;-><init>()V

    throw v13

    .line 137
    :cond_3
    const-string v13, "SKY EVENT NOTI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "After Notifier Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "ar":Landroid/os/AsyncResult;
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lt v13, v14, :cond_4

    .line 142
    const-string v13, "SKY EVENT NOTI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(1)notifyRegistrants: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Landroid/os/AsyncResult;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v1, v13, v14, v15}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 153
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    iget-object v13, v13, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v13, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 154
    return-void

    .line 147
    :cond_4
    move-object/from16 v0, p1

    array-length v13, v0

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x1

    new-array v11, v13, [B

    .line 148
    .local v11, "payload":[B
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 149
    const-string v13, "SKY EVENT NOTI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(2)notifyRegistrants: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/os/AsyncResult;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v13, v11, v14}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_1
.end method

.method public register(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/SkyRegListManager$RegList;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V

    .line 76
    .local v0, "list":Lcom/android/internal/telephony/SkyRegListManager$RegList;
    const-string v2, "SKY EVENT NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre Register Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 78
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    iget-object v2, v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    const-string v2, "SKY EVENT NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Register Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public size(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SkyRegListManager$RegList;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V

    .line 54
    .local v0, "list":Lcom/android/internal/telephony/SkyRegListManager$RegList;
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 56
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 57
    const/4 v2, -0x1

    .line 59
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    iget-object v2, v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyRegListManager;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "size":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 161
    .local v1, "listInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SkyRegListManager$RegList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "\n"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public unregister(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/SkyRegListManager$RegList;-><init>(Lcom/android/internal/telephony/SkyRegListManager;Ljava/lang/String;)V

    .line 93
    .local v0, "list":Lcom/android/internal/telephony/SkyRegListManager$RegList;
    const-string v2, "SKY EVENT NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre Unregister Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SkyRegListManager;->byEvent:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 95
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    iget-object v2, v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v2, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    iget-object v2, v2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->regList:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    :cond_1
    const-string v2, "SKY EVENT NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Unregister Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SkyRegListManager;->skyRegListArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
