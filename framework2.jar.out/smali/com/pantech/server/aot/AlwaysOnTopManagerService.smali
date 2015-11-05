.class public Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.super Landroid/view/alwaysontop/IAlwaysOnTop$Stub;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;
    }
.end annotation


# static fields
.field public static final ACTION_TOGGLE_SECRET_MODE:Ljava/lang/String; = "com.pantech.settings.secret.switch.action.EASY.SWITCH_SECRETMODE"

.field static final ACTION_WFD_SHUTDOWN:Ljava/lang/String; = "WFD_SHUTDOWN"

.field static final ACTION_WFD_START_SINK:Ljava/lang/String; = "WFD_START_SINK"

.field static final ACTION_WFD_STOP_SINK:Ljava/lang/String; = "WFD_STOP_SINK"

.field static final CALL_END_SETMODE_CHANGE:Ljava/lang/String; = "com.android.phone.action.ENDCALL_SETMODE_CHANGE"

.field static final DEBUG:Z = false

.field static final MSG_ATTACH_TOKEN:I = 0x424

.field static final MSG_HIDE_ALWAYSONTOP:I = 0x406

.field static final MSG_MEDIA_STATE_EVENT:I = 0x44c

.field static final MSG_MOVE_AOT_FRAME:I = 0x514

.field static final MSG_RESTORE_STATE:I = 0x4ba

.field static final MSG_SAVE_STATE:I = 0x4b0

.field static final MSG_SHOW_ALWAYSONTOP:I = 0x3fc

.field static final MSG_SHOW_AOT_ENTRY_WINDOW:I = 0x1

.field static final MSG_SHOW_AOT_PICKER:I = 0xa

.field static final MSG_SKIP_WINDOW:I = 0x4c4

.field static final MSG_START_ALWAYSONTOP:I = 0x410

.field static final MSG_STOP_ALWAYSONTOP:I = 0x41a

.field static final MSG_VISIBLE_AOT_FRAME:I = 0x578

.field static SINGLE_AOT:Z = false

.field static final STATE_MSG_LOOP_COUNT_MAX:I = 0xa

.field static final STATE_MSG_LOOP_TIME:I = 0x64

.field static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "AlwaysOnTopManagerService"

.field static final call_aot_id:Ljava/lang/String; = "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

.field static mMenuClassName:Ljava/lang/String;

.field public static mRepeatNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;"
        }
    .end annotation
.end field

.field public static mRepeatNumberList_four:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SENSOR_X_AXIS_FLIP_THRESHOLD:F

.field private final SENSOR_X_AXIS_TILT_THRESHOLD:F

.field private final SENSOR_Y_AXIS_FLIP_THRESHOLD:F

.field private final SENSOR_Y_AXIS_TILT_THRESHOLD:F

.field final mAlwaysOnTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/AlwaysOnTopState;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/AlwaysOnTopState;",
            ">;"
        }
    .end annotation
.end field

.field mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

.field mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mContext:Landroid/content/Context;

.field mCurIntent:Landroid/content/Intent;

.field mCurToken:Landroid/os/IBinder;

.field mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final mHandler:Landroid/os/Handler;

.field mHaveConnection:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mIsCalling:Z

.field mIsLongPress:Z

.field private mIsMediaApp:Z

.field mLastBindTime:J

.field final mModelInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mMultiDockTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNextAotId:Ljava/lang/String;

.field mNextAppBundle:Landroid/os/Bundle;

.field mScreenOn:Z

.field mSecretReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorData:[F

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field mSensorManager:Landroid/hardware/SensorManager;

.field final mSingleDockTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStateLoopCount:I

.field mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

.field mSystemReady:Z

.field private mToggleTime:J

.field powerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v13, 0x10406fe

    const v12, 0x10406fc

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1126
    invoke-direct {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;-><init>()V

    .line 144
    iput-boolean v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    .line 147
    iput-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 148
    iput-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    .line 160
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 161
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    .line 167
    iput-boolean v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mScreenOn:Z

    .line 173
    iput-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    .line 175
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    .line 177
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF51S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF51K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF51L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef51s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef51k"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef52l"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF52S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF52K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF52L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF52W"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef52s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef52k"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef52l"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef52w"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF56S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF57K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF58L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef56s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef57k"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef58l"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A880S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A880K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A880L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF59S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF59K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF59L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef59s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef59k"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef59l"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A890S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A890K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A890L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef60s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef61k"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "ef62l"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF60S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF61K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "EF62L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A900S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A900K"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v7, "IM-A900L"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iput-boolean v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 236
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    .line 237
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    .line 244
    const/high16 v6, 0x41200000    # 10.0f

    iput v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_X_AXIS_TILT_THRESHOLD:F

    .line 245
    const/high16 v6, 0x41f00000    # 30.0f

    iput v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_Y_AXIS_TILT_THRESHOLD:F

    .line 246
    const/high16 v6, -0x3fc00000    # -3.0f

    iput v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_X_AXIS_FLIP_THRESHOLD:F

    .line 247
    const/high16 v6, 0x40800000    # 4.0f

    iput v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_Y_AXIS_FLIP_THRESHOLD:F

    .line 256
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    .line 258
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.minisketch/.main.miniSketch"

    const v8, 0x1040701

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v8, 0x1040700

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v8, 0x1040702

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v8, 0x1040703

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v8, 0x1040704

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotdictionary/.AOTDictionary"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v8, 0x10406ff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v8, 0x10406fd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotfolder/.AOTFolder"

    const v8, 0x1040705

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    .line 272
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v8, 0x1040709

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v8, 0x1040700

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v8, 0x10406ff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.aotdictionary/.AOTDictionary"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v7, "com.pantech.app.minipen/.miniPen"

    const v8, 0x1040701

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    new-instance v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;

    invoke-direct {v6, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSecretReceiver:Landroid/content/BroadcastReceiver;

    .line 1127
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    .line 1128
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    .line 1129
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1132
    new-instance v6, Lcom/android/internal/os/HandlerCaller;

    new-instance v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;

    invoke-direct {v7, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-direct {v6, p1, v10, v7, v9}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1138
    new-instance v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;

    invoke-direct {v6, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v10, v9}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 1142
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->powerManager:Landroid/os/PowerManager;

    .line 1145
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1146
    .local v4, "screenOnOffFilt":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1148
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    const-string v6, "android.intent.action.APP_ERROR"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1150
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1151
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;

    invoke-direct {v7, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1155
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1156
    .local v5, "telephonyFilt":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const-string v6, "com.android.phone.action.ENDCALL_SETMODE_CHANGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;

    invoke-direct {v7, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1163
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1164
    .local v2, "lidStateFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.LID_STATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1167
    const-string v6, "com.pantech.intent.action.FINGER_KEY_DOUBLE_PRESS_LCD_OFF"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;

    invoke-direct {v7, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1175
    .local v0, "WFDConnectFilt":Landroid/content/IntentFilter;
    const-string v6, "WFD_START_SINK"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    const-string v6, "WFD_STOP_SINK"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    const-string v6, "WFD_SHUTDOWN"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;

    invoke-direct {v7, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1183
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1184
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.pantech.settings.secret.switch.action.EASY.SWITCH_SECRETMODE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1185
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSecretReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1189
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {p0, v6, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1193
    const-string v6, "sensor"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1194
    new-instance v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;

    invoke-direct {v6, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 1282
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isEnableRearTouch(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->registerGyroSensorListener()Z

    .line 1286
    :cond_0
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1288
    .local v3, "model":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->checkModelInfo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1289
    const-string v6, "AlwaysOnTopManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not found model!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isEnableRearTouch(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F

    return-object v0
.end method

.method static synthetic access$202(Lcom/pantech/server/aot/AlwaysOnTopManagerService;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # [F

    .prologue
    .line 104
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F

    return-object p1
.end method

.method static synthetic access$300(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/pantech/server/aot/AlwaysOnTopManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J

    return-wide p1
.end method

.method public static getCurrentRotation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2300
    const/4 v1, 0x0

    .line 2301
    .local v1, "result":I
    if-eqz p0, :cond_0

    .line 2302
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2303
    .local v2, "window":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 2304
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2305
    .local v0, "dis":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2309
    .end local v0    # "dis":Landroid/view/Display;
    .end local v1    # "result":I
    .end local v2    # "window":Landroid/view/WindowManager;
    :cond_0
    return v1
.end method

.method private isEnableRearTouch(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2249
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rear_touch"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2251
    .local v0, "enable":I
    if-eqz v0, :cond_0

    .line 2252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rear_touch_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 2254
    .local v1, "type":I
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableRearTouch type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 2256
    const/4 v2, 0x1

    .line 2263
    .end local v0    # "enable":I
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v2

    .line 2260
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1970
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1971
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1973
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1975
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.alwaysontopservice.AlwaysOnTopService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x2280

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1984
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 1985
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1986
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1987
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    .local v0, "compName":Landroid/content/ComponentName;
    const-string v9, "android.permission.BIND_ALWAYS_ON_TOP"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1990
    const-string v9, "AlwaysOnTopManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping always on top method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.BIND_ALWAYS_ON_TOP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2000
    :cond_0
    :try_start_0
    new-instance v4, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9, v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2001
    .local v4, "p":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    invoke-virtual {v4}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2003
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2005
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "p":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catch_0
    move-exception v1

    .line 2006
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "AlwaysOnTopManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load AlwaysOnTop Service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2007
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 2008
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AlwaysOnTopManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load AlwaysOnTop Serivce "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2012
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    return-void
.end method

.method checkModelInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 1295
    const/4 v1, 0x0

    .line 1296
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1297
    .local v2, "value":I
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1298
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1301
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 1321
    :goto_0
    return v1

    .line 1303
    :pswitch_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 1304
    const-string v3, "com.pantech.server.aot.AlwaysOnTopMenuSingle"

    sput-object v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    .line 1305
    const/4 v1, 0x1

    .line 1306
    goto :goto_0

    .line 1308
    :pswitch_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 1310
    const-string v3, "com.pantech.server.aot.AlwaysOnTopMenuMultiRC"

    sput-object v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    .line 1315
    const/4 v1, 0x1

    .line 1316
    goto :goto_0

    .line 1301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method createAlwaysOnTopEntryWindow()V
    .locals 4

    .prologue
    .line 2104
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2105
    const v0, 0x1030059

    .line 2107
    .local v0, "mTheme":I
    :try_start_0
    new-instance v1, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    .line 2108
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v1, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    .line 2110
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setCancelable(Z)V

    .line 2111
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setCanceledOnTouchOutside(Z)V

    .line 2112
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->showAotmWindow()V

    .line 2113
    monitor-exit v2

    .line 2114
    return-void

    .line 2113
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 1641
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1647
    :goto_0
    return-void

    .line 1644
    :cond_0
    invoke-virtual {p0, p2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1645
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public getAlwaysOnTopList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1353
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 1354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledAlwaysOnTopList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1359
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->getEnabledAlwaysOnTopListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEnabledAlwaysOnTopListLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1364
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 1366
    .local v1, "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1368
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1369
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1370
    .local v3, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v5

    if-nez v5, :cond_0

    .line 1371
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1374
    .end local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    return-object v4
.end method

.method public getMediaApp()Z
    .locals 3

    .prologue
    .line 2166
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2167
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 2168
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2171
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ getMediaApp"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRearTouchLongPress()Z
    .locals 1

    .prologue
    .line 2296
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1655
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 1830
    :goto_0
    return v3

    :sswitch_0
    move v3, v5

    .line 1658
    goto :goto_0

    .line 1661
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopMenu()V

    move v3, v5

    .line 1662
    goto :goto_0

    .line 1665
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_0

    .line 1667
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->showAlwaysOnTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v5

    .line 1674
    goto :goto_0

    .line 1668
    :catch_0
    move-exception v1

    .line 1669
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail showAlwaysOnTop: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1672
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAlwaysOnTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1677
    :sswitch_3
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1680
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1683
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-ne v3, v5, :cond_1

    const-string v7, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1684
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10406fb

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1685
    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 1688
    :cond_1
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1690
    .local v2, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-nez v2, :cond_2

    .line 1691
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info is null!!:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    monitor-exit v6

    move v3, v4

    goto/16 :goto_0

    .line 1695
    :cond_2
    invoke-virtual {v2}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1697
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x104070b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-eqz v3, :cond_3

    iget-object v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1701
    monitor-exit v6

    move v3, v5

    goto/16 :goto_0

    .line 1697
    :cond_3
    iget-object v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_2

    .line 1704
    :cond_4
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1705
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 1706
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1709
    :cond_5
    monitor-exit v6

    move v3, v5

    .line 1710
    goto/16 :goto_0

    .line 1709
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1713
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_7

    .line 1715
    :try_start_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1721
    :goto_3
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1722
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v4, v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1723
    iput-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 1724
    iput-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    :cond_6
    :goto_4
    move v3, v5

    .line 1730
    goto/16 :goto_0

    .line 1716
    :catch_1
    move-exception v1

    .line 1717
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail unbindAlwaysOnTopLocked: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1728
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unbindAlwaysOnTopLocked:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1733
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_8

    .line 1735
    :try_start_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->stopAlwaysOnTop()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    move v3, v5

    .line 1742
    goto/16 :goto_0

    .line 1736
    :catch_2
    move-exception v1

    .line 1737
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail stopAlwaysOnTop: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1740
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAlwaysOnTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1745
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1749
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->attachToken(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    move v3, v5

    .line 1754
    goto/16 :goto_0

    .line 1751
    :catch_3
    move-exception v1

    .line 1752
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail attachToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1757
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_9

    .line 1759
    :try_start_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v6}, Lcom/pantech/server/aot/AlwaysOnTopState;->sendMediaStateEvent(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    move v3, v5

    .line 1766
    goto/16 :goto_0

    .line 1760
    :catch_4
    move-exception v1

    .line 1761
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail sendMediaStateEvent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1764
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMediaStateEvent:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1769
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_a

    .line 1771
    :try_start_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->saveState()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_8
    move v3, v5

    .line 1778
    goto/16 :goto_0

    .line 1772
    :catch_5
    move-exception v1

    .line 1773
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail saveState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1776
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1781
    :sswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_b

    .line 1783
    :try_start_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->restoreState()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_9
    move v3, v5

    .line 1790
    goto/16 :goto_0

    .line 1784
    :catch_6
    move-exception v1

    .line 1785
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail restoreState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1788
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_b
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1793
    :sswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_c

    .line 1795
    :try_start_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->skipAOTWindow()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_a
    move v3, v5

    .line 1802
    goto/16 :goto_0

    .line 1796
    :catch_7
    move-exception v1

    .line 1797
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail skipAOTWindow: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1800
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipAOTWindow:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1805
    :sswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_d

    .line 1807
    :try_start_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->moveAOTFrame()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_b
    move v3, v5

    .line 1814
    goto/16 :goto_0

    .line 1808
    :catch_8
    move-exception v1

    .line 1809
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail moveAOTFrame :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1812
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveAOTFrame: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", msg.arg1 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1818
    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_e

    .line 1820
    :try_start_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->visibleAOTFrame()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    :goto_c
    move v3, v5

    .line 1827
    goto/16 :goto_0

    .line 1821
    :catch_9
    move-exception v1

    .line 1822
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail visibleAOTFrame :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1825
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_e
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visibleAOTFrame: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", msg.arg1 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1655
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x3fc -> :sswitch_2
        0x406 -> :sswitch_4
        0x410 -> :sswitch_3
        0x41a -> :sswitch_5
        0x424 -> :sswitch_6
        0x44c -> :sswitch_7
        0x4b0 -> :sswitch_8
        0x4ba -> :sswitch_9
        0x4c4 -> :sswitch_a
        0x514 -> :sswitch_b
        0x578 -> :sswitch_c
    .end sparse-switch
.end method

.method public hideAlwaysOnTop(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1481
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1482
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1483
    monitor-exit v2

    .line 1493
    :goto_0
    return v1

    .line 1486
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1487
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1490
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x406

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1491
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 1495
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1493
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hideAlwaysOnTopEntryWindow()V
    .locals 2

    .prologue
    .line 2131
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->hideAotmWindow()V

    .line 2135
    :cond_0
    monitor-exit v1

    .line 2136
    return-void

    .line 2135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideAlwaysOnTopMenu()V
    .locals 2

    .prologue
    .line 2077
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2078
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 2079
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopEntryWindow()V

    .line 2080
    monitor-exit v1

    .line 2081
    return-void

    .line 2080
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideAlwaysOnTopMenuLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2087
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 2092
    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .line 2095
    :cond_0
    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2097
    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 2098
    return-void
.end method

.method public isAlwaysOnTopRunning()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1517
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1518
    :try_start_0
    iget-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 1519
    monitor-exit v4

    .line 1536
    :goto_0
    return v3

    .line 1525
    :cond_0
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1526
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1527
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 1528
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1529
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 1537
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1536
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isAlwaysOnTopRunningID(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1499
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1500
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1501
    monitor-exit v2

    .line 1511
    :goto_0
    return v1

    .line 1506
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1507
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1508
    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopState;->isRunning()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1513
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1511
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isCameraRunning()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2224
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2226
    :try_start_0
    iget-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 2227
    monitor-exit v4

    .line 2240
    :goto_0
    return v1

    .line 2229
    :cond_0
    const/4 v0, 0x0

    .line 2232
    .local v0, "mCameraRunning":I
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v5

    and-int/lit8 v0, v5, 0xf

    .line 2235
    if-ne v0, v2, :cond_1

    .line 2236
    monitor-exit v4

    move v1, v2

    goto :goto_0

    .line 2237
    :cond_1
    if-ne v0, v3, :cond_2

    .line 2238
    monitor-exit v4

    move v1, v3

    goto :goto_0

    .line 2240
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 2241
    .end local v0    # "mCameraRunning":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMediaRunning(I)Z
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2177
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2178
    :try_start_0
    iget-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v4, :cond_0

    .line 2179
    monitor-exit v7

    move v4, v5

    .line 2217
    :goto_0
    return v4

    .line 2182
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2213
    :pswitch_0
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMediaRunning: default:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 2185
    :pswitch_1
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v4

    and-int/lit8 v1, v4, 0xf

    .line 2187
    .local v1, "mCameraRunning":I
    if-eq v1, v6, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 2188
    :cond_1
    monitor-exit v7

    move v4, v6

    goto :goto_0

    .line 2190
    :cond_2
    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 2195
    .end local v1    # "mCameraRunning":I
    :pswitch_2
    invoke-static {}, Landroid/media/MediaPlayer;->isRunningExceptAOT()Z

    move-result v4

    monitor-exit v7

    goto :goto_0

    .line 2218
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2201
    :pswitch_3
    :try_start_1
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2202
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2203
    .local v3, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2204
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isExceptionPackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 2205
    :try_start_2
    monitor-exit v7

    move v4, v6

    goto :goto_0

    .line 2208
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto/16 :goto_0

    .line 2182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public moveAOTFrame()V
    .locals 7

    .prologue
    .line 2327
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2328
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 2329
    monitor-exit v4

    .line 2338
    :goto_0
    return-void

    .line 2331
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2332
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 2333
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 2334
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x514

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2337
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerGyroSensorListener()Z
    .locals 4

    .prologue
    .line 2267
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "registerGyroSensorListener()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 2269
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "registerGyroSensorListener()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 2275
    :goto_0
    return v0

    .line 2274
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerGyroSensorListener fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState()V
    .locals 3

    .prologue
    .line 1561
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1562
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1563
    monitor-exit v1

    return-void

    .line 1565
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ restoreState"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1596
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1597
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1598
    monitor-exit v2

    .line 1610
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1604
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1605
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4ba

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1609
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1607
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreState() info is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1542
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1543
    monitor-exit v1

    return-void

    .line 1546
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ saveState"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveState(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1579
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1580
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1581
    monitor-exit v2

    .line 1593
    :goto_0
    return-void

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1587
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1588
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4b0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1592
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1590
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveState() info is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendMediaStateEvent(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 2139
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2140
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 2141
    monitor-exit v4

    .line 2153
    :goto_0
    return-void

    .line 2146
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 2148
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 2149
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x44c

    invoke-virtual {v5, v6, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2152
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serviceTest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1325
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "AlwaysOnTop Service Test.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void
.end method

.method setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 21
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "restart"    # Z

    .prologue
    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1840
    .local v7, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-nez v7, :cond_0

    .line 1841
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1844
    :cond_0
    const/4 v2, 0x0

    .line 1845
    .local v2, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-eqz v3, :cond_6

    .line 1846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1847
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1848
    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 1849
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1850
    .local v15, "curId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1851
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    .line 1852
    const/4 v2, 0x0

    .line 1909
    .end local v15    # "curId":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1910
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove aot state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    const/4 v2, 0x0

    .line 1915
    :cond_3
    if-nez v2, :cond_7

    .line 1918
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    .line 1922
    new-instance v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/pantech/server/aot/AlwaysOnTopState;-><init>(Landroid/content/Context;Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/alwaysontop/AlwaysOnTopInfo;)V

    .line 1927
    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :try_start_0
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->startAlwaysOnTopInnerLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    :cond_4
    :goto_1
    return-void

    .line 1855
    .restart local v15    # "curId":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_2

    .line 1857
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAotAppBundle()Landroid/os/Bundle;

    move-result-object v19

    .line 1858
    .local v19, "stateBundle":Landroid/os/Bundle;
    if-eqz v19, :cond_2

    .line 1859
    const-string v3, "android.alwaysontopservice.aot.widget_db_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1860
    .local v13, "curBundleId":J
    const-string v3, "android.alwaysontopservice.aot.widget_db_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1862
    .local v11, "bundleId":J
    cmp-long v3, v13, v11

    if-eqz v3, :cond_2

    .line 1863
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 1864
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    .line 1865
    const/4 v2, 0x0

    .line 1866
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_1

    .line 1906
    .end local v11    # "bundleId":J
    .end local v13    # "curBundleId":J
    .end local v15    # "curId":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "stateBundle":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    goto/16 :goto_0

    .line 1931
    :catch_0
    move-exception v16

    .line 1932
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v3, "AlwaysOnTopManagerService"

    const-string v4, "Unexpected exception"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1938
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_7
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAOTState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1939
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_8

    .line 1940
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loop count is max. fail start aot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1943
    :cond_8
    move-object/from16 v9, p1

    .line 1944
    .local v9, "aotId":Ljava/lang/String;
    move-object/from16 v8, p2

    .line 1945
    .local v8, "aotBundle":Landroid/os/Bundle;
    move/from16 v10, p3

    .line 1946
    .local v10, "aotRestart":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v8, v10}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1954
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    goto/16 :goto_1

    .line 1960
    .end local v8    # "aotBundle":Landroid/os/Bundle;
    .end local v9    # "aotId":Ljava/lang/String;
    .end local v10    # "aotRestart":Z
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    .line 1962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fc

    const/4 v6, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public setMediaApp(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2157
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 2158
    monitor-exit v1

    .line 2163
    :goto_0
    return-void

    .line 2161
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsMediaApp:Z

    .line 2162
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRearTouchLongPress(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2290
    iput-boolean p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    .line 2291
    return-void
.end method

.method public setShowOnList(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 2315
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2317
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 2318
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "service not running!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v0, 0x0

    monitor-exit v1

    .line 2322
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setShowOnList(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showAlwaysOnTopEntryWindow()V
    .locals 2

    .prologue
    .line 2120
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2121
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->showAotmWindow()V

    .line 2124
    :cond_0
    monitor-exit v1

    .line 2125
    return-void

    .line 2124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showAlwaysOnTopMenu()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2018
    iget-boolean v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-eqz v8, :cond_1

    .line 2019
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10406fb

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 2025
    const v6, 0x10301e5

    .line 2028
    .local v6, "mTheme":I
    :try_start_0
    sget-object v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2029
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 2030
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Class;

    .line 2031
    .local v0, "arg":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v0, v8

    .line 2032
    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v0, v8

    .line 2033
    const/4 v8, 0x2

    const-class v9, Ljava/util/List;

    aput-object v9, v0, v8

    .line 2034
    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v0, v8

    .line 2035
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2036
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-boolean v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2037
    .local v7, "obj":Ljava/lang/Object;
    check-cast v7, Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .end local v7    # "obj":Ljava/lang/Object;
    iput-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2051
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    .line 2053
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, v11}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setCancelable(Z)V

    .line 2054
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    new-instance v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService$5;

    invoke-direct {v9, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$5;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2061
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2062
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x7e1

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2063
    const-string v8, "AlwaysOnTopMenu"

    invoke-virtual {v5, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2064
    const/16 v8, 0x50

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2065
    const/4 v8, -0x1

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2066
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2067
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, v11}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setCanceledOnTouchOutside(Z)V

    .line 2068
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->showAotMenuWindow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2069
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    goto/16 :goto_0

    .line 2039
    .end local v0    # "arg":[Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :try_start_1
    const-string v8, "AlwaysOnTopManagerService"

    const-string v9, "Class Not Found!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2042
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 2043
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "AlwaysOnTopManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2046
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 2047
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "AlwaysOnTopManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showAlwaysOnTopPicker()V
    .locals 3

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1393
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 1394
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1399
    return-void

    .line 1394
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1398
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1396
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public skipAOTWindow()V
    .locals 9

    .prologue
    .line 1613
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1614
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1615
    monitor-exit v4

    .line 1638
    :goto_0
    return-void

    .line 1628
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1629
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1630
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAOTState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    .line 1631
    if-eqz v2, :cond_1

    .line 1633
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4c4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1637
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAlwaysOnTop(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1409
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1410
    :try_start_0
    iget-boolean v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v7, :cond_0

    .line 1411
    monitor-exit v6

    .line 1436
    :goto_0
    return v5

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 1418
    .local v1, "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1419
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1420
    .local v3, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1421
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1422
    .local v4, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    invoke-virtual {v4}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1423
    move-object v3, v4

    .line 1427
    .end local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    if-eqz v3, :cond_3

    .line 1429
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0x410

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1432
    const/4 v5, 0x1

    monitor-exit v6

    goto :goto_0

    .line 1437
    .end local v0    # "N":I
    .end local v1    # "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1420
    .restart local v0    # "N":I
    .restart local v1    # "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .restart local v2    # "i":I
    .restart local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .restart local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1434
    .end local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_3
    :try_start_1
    const-string v7, "AlwaysOnTopManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAlwaysOnTop() info is null:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopAllAlwaysOnTop()Z
    .locals 7

    .prologue
    .line 1462
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1463
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1464
    const/4 v3, 0x0

    monitor-exit v4

    .line 1476
    :goto_0
    return v3

    .line 1467
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1471
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1472
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x406

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1477
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1476
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopAlwaysOnTop(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1442
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1443
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1444
    monitor-exit v2

    .line 1457
    :goto_0
    return v1

    .line 1450
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1451
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1452
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x41a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1453
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 1458
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1455
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopAlwaysOnTop() info is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1329
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1330
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1331
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    .line 1332
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1335
    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-nez v3, :cond_0

    .line 1336
    const-string v3, "persist.launcher2.aotfolder"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1337
    .local v0, "aotFolderExist":Z
    :goto_0
    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {p0, v1, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setShowOnList(Ljava/lang/String;Z)Z

    .line 1348
    .end local v0    # "aotFolderExist":Z
    :cond_0
    monitor-exit v2

    .line 1349
    return-void

    :cond_1
    move v0, v1

    .line 1336
    goto :goto_0

    .line 1348
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegisterGyroSensorListener()V
    .locals 3

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2285
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    .line 2286
    return-void

    .line 2283
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterGyroSensorListener fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public visibleAOTFrame(Z)V
    .locals 7
    .param p1, "flipFlag"    # Z

    .prologue
    .line 2343
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2344
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 2345
    monitor-exit v4

    .line 2355
    :goto_0
    return-void

    .line 2347
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2348
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 2349
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/AlwaysOnTopState;->setFlipValue(Z)V

    .line 2350
    if-eqz v0, :cond_1

    .line 2351
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x578

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2354
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
