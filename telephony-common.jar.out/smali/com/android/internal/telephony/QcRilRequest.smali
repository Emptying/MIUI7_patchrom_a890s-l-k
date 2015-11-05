.class Lcom/android/internal/telephony/QcRilRequest;
.super Ljava/lang/Object;
.source "QcrilMsgTunnelSocket.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field static final TAG:Ljava/lang/String; = "QcRilRequest"

.field static sNextSerial:I

.field private static sPool:Lcom/android/internal/telephony/QcRilRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/internal/telephony/QcRilRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 911
    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/telephony/QcRilRequest;->sNextSerial:I

    .line 912
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/QcRilRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 913
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/QcRilRequest;->sPoolSync:Ljava/lang/Object;

    .line 914
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    .line 915
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/QcRilRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "rr":Lcom/android/internal/telephony/QcRilRequest;
    sget-object v2, Lcom/android/internal/telephony/QcRilRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 936
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    if-eqz v1, :cond_0

    .line 937
    sget-object v0, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    .line 938
    iget-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mNext:Lcom/android/internal/telephony/QcRilRequest;

    sput-object v1, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    .line 939
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mNext:Lcom/android/internal/telephony/QcRilRequest;

    .line 940
    sget v1, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    .line 942
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    if-nez v0, :cond_1

    .line 945
    new-instance v0, Lcom/android/internal/telephony/QcRilRequest;

    .end local v0    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/QcRilRequest;-><init>()V

    .line 948
    .restart local v0    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/QcRilRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 949
    :try_start_1
    sget v1, Lcom/android/internal/telephony/QcRilRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/QcRilRequest;->sNextSerial:I

    iput v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    .line 950
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 951
    iput p0, v0, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    .line 952
    iput-object p1, v0, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    .line 955
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 956
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 950
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 960
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 986
    sget-object v1, Lcom/android/internal/telephony/QcRilRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    const/16 v0, 0x3e8

    :try_start_0
    sput v0, Lcom/android/internal/telephony/QcRilRequest;->sNextSerial:I

    .line 988
    monitor-exit v1

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1014
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1017
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string v1, "QcRilRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/QcRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1023
    iget-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    .line 1030
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 971
    sget-object v1, Lcom/android/internal/telephony/QcRilRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    sget v0, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 973
    sget-object v0, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilRequest;->mNext:Lcom/android/internal/telephony/QcRilRequest;

    .line 974
    sput-object p0, Lcom/android/internal/telephony/QcRilRequest;->sPool:Lcom/android/internal/telephony/QcRilRequest;

    .line 975
    sget v0, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/QcRilRequest;->sPoolSize:I

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    .line 978
    :cond_0
    monitor-exit v1

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 997
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 1002
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
