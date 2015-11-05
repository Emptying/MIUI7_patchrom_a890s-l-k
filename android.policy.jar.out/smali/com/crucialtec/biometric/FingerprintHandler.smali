.class public Lcom/crucialtec/biometric/FingerprintHandler;
.super Ljava/lang/Object;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;,
        Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;,
        Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;,
        Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;,
        Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;,
        Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;,
        Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;,
        Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;,
        Lcom/crucialtec/biometric/FingerprintHandler$Requester;,
        Lcom/crucialtec/biometric/FingerprintHandler$TemplateColumn;,
        Lcom/crucialtec/biometric/FingerprintHandler$RESULT;
    }
.end annotation


# static fields
.field public static final ACTION_VERIFY:Ljava/lang/String; = "btp.intent.action.verify"

.field public static final ASSIGN_APPLICATION:I = 0x2

.field public static final ASSIGN_CONTACT:I = 0x3

.field public static final ASSIGN_NONE:I = 0x0

.field public static final ASSIGN_UNLOCK:I = 0x1

.field private static final BTP_PACKAGE:Ljava/lang/String; = "com.crucialtec.btp"

.field private static final DEFAULT_REQUEST_TIMEOUT:I = 0x0

.field public static final EXTRA_DB_COUNT:Ljava/lang/String; = "DB_COUNT"

.field public static final EXTRA_DB_FINGER_ARRAY:Ljava/lang/String; = "DB_FINGER_ARRAY"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_MAX_RETRY:Ljava/lang/String; = "max_retry"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "pending_intent"

.field public static final EXTRA_RESUME_MESSAGE:Ljava/lang/String; = "resumeMessage"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final INITIAL_GAIN:I = 0x10

.field public static final INITIAL_OFFSET:I = 0x15

.field public static final INITIAL_PXL:I = 0x2c

.field private static final INVALID_POSITION:I = -0x1

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "_template"

.field public static final MAX_ENROL_COUNT:I = 0x4

.field public static final MAX_FINGER_COUNT:I = 0xa

.field private static final PANTECH_BTP_PACKAGE:Ljava/lang/String; = "com.pantech.app.fingerscan"

.field public static final PERMISSION:Ljava/lang/String; = "com.pantech.fingerprint.security"

.field private static final TAG_ENROLLMENT:Ljava/lang/String; = "Enrollment"

.field private static final TAG_RESULT:Ljava/lang/String; = "Result"

.field private static final TAG_VERIFICATION:Ljava/lang/String; = "Verification"

.field public static final TEMPLATE_URI:Landroid/net/Uri;

.field private static isInitialize:Z

.field static key_type:I


# instance fields
.field private TEMPLATE_DIRECTORY:Ljava/lang/String;

.field private final canEmulating:Z

.field private emulateFile:Ljava/io/File;

.field private emulateFileCreatedTime:J

.field private emulateTemplateInfo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private enrolDocumentIndex:I

.field private enrolFingerIndex:I

.field private enrolResult:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint1:Landroid/graphics/Bitmap;

.field private fingerprint2:Landroid/graphics/Bitmap;

.field private hasDevice:Z

.field requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

.field private verifyDocumentIndex:I

.field private verifyResult:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const-string v0, "content://com.crucialtec.btp/template"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_URI:Landroid/net/Uri;

    .line 124
    sput-boolean v1, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    .line 127
    sput v1, Lcom/crucialtec/biometric/FingerprintHandler;->key_type:I

    .line 294
    const-string v0, "fpc1080_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 305
    iput-boolean v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->canEmulating:Z

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->emulateFileCreatedTime:J

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolFingerIndex:I

    .line 325
    iput v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolDocumentIndex:I

    .line 326
    iput v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyDocumentIndex:I

    .line 328
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;

    .line 329
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;

    .line 342
    const-string v0, "FingerprintHandler"

    const-string v1, "Create Fingerprint Handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-class v1, Lcom/crucialtec/biometric/FingerprintHandler;

    monitor-enter v1

    .line 344
    :try_start_0
    sget-boolean v0, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    if-nez v0, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->BTPInitialize()I

    .line 346
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->testSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    .line 347
    iget-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    if-nez v0, :cond_0

    .line 349
    const-string v0, "Fingerscan"

    const-string v2, "The btp sensor doesn\'t exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    .line 353
    :cond_1
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 305
    iput-boolean v5, p0, Lcom/crucialtec/biometric/FingerprintHandler;->canEmulating:Z

    .line 323
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->emulateFileCreatedTime:J

    .line 324
    const/4 v3, -0x1

    iput v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolFingerIndex:I

    .line 325
    iput v5, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolDocumentIndex:I

    .line 326
    iput v5, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyDocumentIndex:I

    .line 328
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;

    .line 329
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;

    .line 379
    const-string v3, "com.crucialtec.btp"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.pantech.app.fingerscan"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_DIRECTORY:Ljava/lang/String;

    .line 396
    :goto_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "require WRITE_EXTERNAL_STORAGE permission."

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    const-class v4, Lcom/crucialtec/biometric/FingerprintHandler;

    monitor-enter v4

    .line 402
    const/4 v2, -0x1

    .line 403
    .local v2, "status":I
    :try_start_0
    sget-boolean v3, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    if-nez v3, :cond_6

    .line 404
    invoke-direct {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->BTPInitialize()I

    move-result v2

    .line 405
    if-gez v2, :cond_4

    .line 406
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "BTPInitialize() fail."

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 383
    .end local v2    # "status":I
    :cond_2
    const-string v3, "com.pantech.fingerprint.security"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "need \'com.pantech.fingerprint.security\' permission to use FingerprintHandler"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_3
    :try_start_1
    const-string v3, "com.pantech.app.fingerscan"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 389
    .local v0, "btpContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_DIRECTORY:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 391
    .end local v0    # "btpContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "can\'t find btp pacakage."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 409
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "status":I
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->testSensor()Z

    move-result v3

    iput-boolean v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    .line 410
    iget-boolean v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    if-nez v3, :cond_5

    .line 412
    const-string v3, "Fingerscan"

    const-string v5, "The btp sensor doesn\'t exist"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    .line 417
    :cond_6
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    const-string v3, "Fingerscan"

    const-string v4, "Always true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-boolean v6, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    .line 454
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restore"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 305
    iput-boolean v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->canEmulating:Z

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->emulateFileCreatedTime:J

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolFingerIndex:I

    .line 325
    iput v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolDocumentIndex:I

    .line 326
    iput v2, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyDocumentIndex:I

    .line 328
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;

    .line 329
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;

    .line 357
    const-string v0, "FingerprintHandler"

    const-string v1, "Create Fingerprint Handler for restore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_DIRECTORY:Ljava/lang/String;

    .line 361
    iput-boolean v3, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    .line 363
    const-class v1, Lcom/crucialtec/biometric/FingerprintHandler;

    monitor-enter v1

    .line 364
    :try_start_0
    sget-boolean v0, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    if-nez v0, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->BTPInitialize()I

    .line 367
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->testSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    .line 368
    iget-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    if-nez v0, :cond_0

    .line 370
    const-string v0, "Fingerscan"

    const-string v2, "The btp sensor doesn\'t exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/crucialtec/biometric/FingerprintHandler;->isInitialize:Z

    .line 375
    :cond_1
    monitor-exit v1

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native BTPInitialize()I
.end method

.method private native DeleteTemplate(I)Z
.end method

.method private native Enrol(IIILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
.end method

.method private native IsLicenseValid()Z
.end method

.method private native IsSetShouldExit()Z
.end method

.method private native SetShouldExit(Z)V
.end method

.method private native SwipeTest(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
.end method

.method private native Verify(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
.end method

.method static synthetic access$000(Lcom/crucialtec/biometric/FingerprintHandler;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crucialtec/biometric/FingerprintHandler;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crucialtec/biometric/FingerprintHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler;->SetShouldExit(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/crucialtec/biometric/FingerprintHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    return v0
.end method

.method static synthetic access$400(Lcom/crucialtec/biometric/FingerprintHandler;IIILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/graphics/Bitmap;
    .param p5, "x5"    # Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/crucialtec/biometric/FingerprintHandler;->Enrol(IIILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/crucialtec/biometric/FingerprintHandler;ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/crucialtec/biometric/FingerprintHandler;->Verify(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/crucialtec/biometric/FingerprintHandler;ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/crucialtec/biometric/FingerprintHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/crucialtec/biometric/FingerprintHandler;->SwipeTest(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    return v0
.end method

.method public static native currentNaviMode()I
.end method

.method public static native disableSensor()Z
.end method

.method public static native enableSensor()Z
.end method

.method private getFileDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native isCaptureMode()Z
.end method

.method private loadEmulateTemplateInfo()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 679
    const/4 v5, 0x0

    .line 680
    .local v5, "target":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 681
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 683
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "btp_emulate.tpl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 685
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 692
    if-eqz v4, :cond_0

    .line 693
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 696
    :cond_0
    if-eqz v2, :cond_1

    .line 697
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 705
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v5

    .line 700
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "target":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 703
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 688
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 692
    if-eqz v3, :cond_3

    .line 693
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 696
    :cond_3
    if-eqz v1, :cond_2

    .line 697
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 700
    :catch_2
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 692
    :goto_2
    if-eqz v3, :cond_4

    .line 693
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 696
    :cond_4
    if-eqz v1, :cond_5

    .line 697
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 702
    :cond_5
    :goto_3
    throw v6

    .line 700
    :catch_3
    move-exception v0

    .line 701
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 687
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private parseEmulateFile(Ljava/io/File;)Z
    .locals 8
    .param p1, "emulateFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 712
    iget-object v7, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 713
    iget-object v7, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 714
    const/4 v7, -0x1

    iput v7, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolFingerIndex:I

    .line 715
    iput v6, p0, Lcom/crucialtec/biometric/FingerprintHandler;->enrolDocumentIndex:I

    .line 716
    iput v6, p0, Lcom/crucialtec/biometric/FingerprintHandler;->verifyDocumentIndex:I

    .line 718
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 720
    const/4 v2, 0x0

    .line 721
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 723
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 725
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 726
    .local v5, "reader":Lorg/xml/sax/XMLReader;
    new-instance v7, Lcom/crucialtec/biometric/FingerprintHandler$1;

    invoke-direct {v7, p0}, Lcom/crucialtec/biometric/FingerprintHandler$1;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;)V

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 770
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 771
    const/4 v6, 0x1

    .line 777
    if-eqz v3, :cond_0

    .line 779
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 789
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "reader":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return v6

    .line 781
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v5    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 773
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    if-eqz v2, :cond_0

    .line 779
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 781
    :catch_2
    move-exception v0

    .line 783
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 777
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v2, :cond_1

    .line 779
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 784
    :cond_1
    :goto_3
    throw v6

    .line 781
    :catch_3
    move-exception v0

    .line 783
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 777
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 773
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static native sensorStatus()Z
.end method

.method public static native setImageCaptureMode(Z)Z
.end method

.method public static native startNaviMode(I)Z
.end method

.method public static native stopNaviMode()Z
.end method

.method private storeEmulateTemplateInfo()V
    .locals 7

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 652
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "btp_emulate.tpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/crucialtec/biometric/FingerprintHandler;->emulateTemplateInfo:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    if-eqz v4, :cond_0

    .line 662
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 665
    :cond_0
    if-eqz v2, :cond_1

    .line 666
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 673
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 669
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 672
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 657
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 661
    if-eqz v3, :cond_3

    .line 662
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 665
    :cond_3
    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 669
    :catch_2
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 661
    :goto_2
    if-eqz v3, :cond_4

    .line 662
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 665
    :cond_4
    if-eqz v1, :cond_5

    .line 666
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 671
    :cond_5
    :goto_3
    throw v5

    .line 669
    :catch_3
    move-exception v0

    .line 670
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 656
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public native BackupFingerPrint()V
.end method

.method public native CreateFingerPrintRollback()V
.end method

.method public native DeleteAllTemplate()Z
.end method

.method public native DeleteRollbackFile()V
.end method

.method public native RestoreFingerPrint()V
.end method

.method public native RollbackFingerPrint()V
.end method

.method public native SetADCValues(III)V
.end method

.method public deleteTemplateDBTable(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler;->TEMPLATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public native deleteTemplateFile()I
.end method

.method public native getEnrolledFingerList([II)I
.end method

.method public native getMaxSecurityLevel()I
.end method

.method public native getMinSecurityLevel()I
.end method

.method public native getSecurityLevel()I
.end method

.method public native getTemplateCount()I
.end method

.method public getTemplateCounts()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 631
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler;->getTemplateCount()I

    move-result v0

    .line 634
    return v0
.end method

.method public requestDeleteTemplate(I)Z
    .locals 1
    .param p1, "fingerIndex"    # I

    .prologue
    .line 588
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 592
    :cond_1
    iget-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z

    if-eqz v0, :cond_2

    .line 593
    invoke-direct {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler;->DeleteTemplate(I)Z

    move-result v0

    .line 602
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestEnrol(IILcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 1
    .param p1, "fingerIndex"    # I
    .param p2, "templateIndex"    # I
    .param p3, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/crucialtec/biometric/FingerprintHandler;->requestEnrol(IILcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;Landroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    move-result-object v0

    return-object v0
.end method

.method public requestEnrol(IILcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;Landroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 6
    .param p1, "fingerIndex"    # I
    .param p2, "templateIndex"    # I
    .param p3, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;
    .param p4, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 481
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/crucialtec/biometric/FingerprintHandler;->requestEnrol(IILcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;Landroid/graphics/Bitmap;I)Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    move-result-object v0

    return-object v0
.end method

.method public requestEnrol(IILcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;Landroid/graphics/Bitmap;I)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 4
    .param p1, "fingerIndex"    # I
    .param p2, "templateIndex"    # I
    .param p3, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;
    .param p4, "captureBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "timeout"    # I

    .prologue
    .line 498
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    .line 499
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    if-nez v1, :cond_2

    .line 503
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;

    invoke-direct {v0, p0, p3, p5, p4}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 504
    .local v0, "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 505
    new-instance v1, Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    invoke-direct {v1, p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$Requester;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)V

    iput-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 506
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 509
    .end local v0    # "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSwipeTest(Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;ILandroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 2
    .param p1, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;
    .param p2, "timeout"    # I
    .param p3, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 572
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    if-nez v1, :cond_0

    .line 573
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 574
    .local v0, "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 575
    new-instance v1, Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    invoke-direct {v1, p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$Requester;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)V

    iput-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 576
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 579
    .end local v0    # "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSwipeTest(Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;Landroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 1
    .param p1, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;
    .param p2, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/crucialtec/biometric/FingerprintHandler;->requestSwipeTest(Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;ILandroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    move-result-object v0

    return-object v0
.end method

.method public requestVerify(Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 1
    .param p1, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crucialtec/biometric/FingerprintHandler;->requestVerify(Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;Landroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    move-result-object v0

    return-object v0
.end method

.method public requestVerify(Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;Landroid/graphics/Bitmap;)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 1
    .param p1, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;
    .param p2, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/crucialtec/biometric/FingerprintHandler;->requestVerify(Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;Landroid/graphics/Bitmap;I)Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    move-result-object v0

    return-object v0
.end method

.method public requestVerify(Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;Landroid/graphics/Bitmap;I)Lcom/crucialtec/biometric/FingerprintHandler$Requester;
    .locals 2
    .param p1, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;
    .param p2, "captureBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "timeout"    # I

    .prologue
    .line 541
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    if-nez v1, :cond_0

    .line 542
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 543
    .local v0, "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 544
    new-instance v1, Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    invoke-direct {v1, p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$Requester;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)V

    iput-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 545
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 548
    .end local v0    # "workTask":Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native setSecurityLevel(I)Z
.end method

.method public native testSensor()Z
.end method
