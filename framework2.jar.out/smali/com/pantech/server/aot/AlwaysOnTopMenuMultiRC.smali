.class public Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;
.super Lcom/pantech/server/aot/AlwaysOnTopMenu;
.source "AlwaysOnTopMenuMultiRC.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final AlwaysOnTopIdList:[Ljava/lang/String;

.field static final DEBUG:Z = false

.field static final ICON_WIDTH:I = 0x3f

.field static final LAND_MARGIN_SIZE:I = 0x70

.field static final MARGIN_SIZE:I = 0x15

.field static final MSG_HIDE_AOT_MENU_WINDOW:I = 0x3fc

.field static final MSG_RELAYOUT_AOT_MENU_WINDOW:I = 0x410

.field static final MSG_SHOW_AOT_MENU_WINDOW:I = 0x3f2

.field static final SECRET_CONTENT_URI:Landroid/net/Uri;

.field static final SECRET_MODE_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "AlwaysOnTopMenuMultiRC"


# instance fields
.field AOT_ITEMS_PER_PAGE:I

.field AOT_ITEM_PAGES:I

.field ITEM_START_ID:I

.field private aotItemClickListener:Landroid/view/View$OnClickListener;

.field private mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

.field private mAotHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/menu/AotItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

.field final mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

.field private mAotOrder:Ljava/util/HashMap;
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

.field mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field final mDockItemMap:Ljava/util/HashMap;
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

.field final mDockItemRunningMap:Ljava/util/HashMap;
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

.field final mDockTitleMap:Ljava/util/HashMap;
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

.field private mFirstPage:Landroid/widget/LinearLayout;

.field final mHandler:Landroid/os/Handler;

.field mIsCalling:Z

.field mIsEmptyItem:Z

.field private mLeftMoreImage:Landroid/widget/ImageView;

.field final mPm:Landroid/content/pm/PackageManager;

.field private mRightMoreImage:Landroid/widget/ImageView;

.field private mSecondPage:Landroid/widget/LinearLayout;

.field private mSecretPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdPage:Landroid/widget/LinearLayout;

.field private mWindow:Landroid/view/Window;

.field mWindowCallback:Landroid/view/Window$Callback;

.field private pageTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://com.pantech.app.secret.settings/table_secret_apps_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_CONTENT_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://com.pantech.app.secret.settings/table_secret_mode_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_MODE_URI:Landroid/net/Uri;

    .line 110
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p4, "isCalling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "aotList":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 104
    const/4 v1, 0x4

    iput v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 105
    const/4 v1, 0x3

    iput v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 107
    iput v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->ITEM_START_ID:I

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    .line 126
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.minisketch/.main.miniSketch"

    const v3, 0x1040701

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v3, 0x10406fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v3, 0x1040700

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v3, 0x1040702

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v3, 0x1040703

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v3, 0x1040704

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v3, 0x10406fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v3, 0x10406ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v3, 0x10406fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    const v3, 0x1040705

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v3, 0x104070e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v2, "com.android.browser/.aot.AOTBrowser"

    const v3, 0x104070d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    .line 142
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.minisketch/.main.miniSketch"

    const v3, 0x10800df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v3, 0x10800d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v3, 0x10800e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v3, 0x10800cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v3, 0x10800cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v3, 0x10800c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v3, 0x10800d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v3, 0x10800db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v3, 0x10800e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    const v3, 0x10800d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v3, 0x10800cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v2, "com.android.browser/.aot.AOTBrowser"

    const v3, 0x10800c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    .line 158
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.minisketch/.main.miniSketch"

    const v3, 0x10800e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v3, 0x10800d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v3, 0x10800eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v3, 0x10800ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v3, 0x10800d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v3, 0x10800ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v3, 0x10800d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v3, 0x10800dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v3, 0x10800e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    const v3, 0x10800d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v3, 0x10800cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v2, "com.android.browser/.aot.AOTBrowser"

    const v3, 0x10800c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 179
    iput-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsCalling:Z

    .line 180
    iput-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$1;

    invoke-direct {v1, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 445
    new-instance v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$3;

    invoke-direct {v1, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->pageTouchListener:Landroid/view/View$OnTouchListener;

    .line 655
    new-instance v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;

    invoke-direct {v1, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    .line 213
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotList:Ljava/util/List;

    .line 214
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "AlwaysOnTopMenuMultiRC"

    const-string v2, "AlwaysOnTopMenuMultiRC(): Always on top list is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    .line 219
    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    .line 220
    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mPm:Landroid/content/pm/PackageManager;

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-object p0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    .line 226
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mPm:Landroid/content/pm/PackageManager;

    .line 228
    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsCalling:Z

    .line 230
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)Lcom/pantech/server/aot/menu/AotContainer;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    return-object v0
.end method

.method private checkDBSync(Ljava/util/HashMap;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "secureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    .line 859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v0, "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 861
    .local v1, "hashSize":I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 862
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 863
    .local v4, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 865
    .local v3, "isAdd":Z
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0, v9}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 866
    const/4 v8, 0x0

    .line 885
    :goto_0
    return v8

    .line 869
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 870
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 871
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 873
    .local v6, "order":I
    if-eqz v6, :cond_1

    .line 874
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 876
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const/4 v3, 0x1

    .line 869
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 882
    .end local v6    # "order":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 883
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    :cond_3
    move v8, v9

    .line 885
    goto :goto_0
.end method

.method private getAlwaysOnTopSecureMap()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 813
    new-instance v6, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    const-string v9, "AotMenuSecure"

    invoke-direct {v6, v8, v9}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 814
    .local v6, "testFile":Lcom/pantech/server/aot/menu/AotListFile;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 834
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->loadSecretAppsFromDb()V

    .line 837
    :cond_0
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 839
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 840
    aget-object v8, v1, v3

    aget-object v9, v1, v3

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 843
    aget-object v8, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 845
    :cond_1
    aget-object v8, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 849
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v8, "persist.launcher2.aotfolder"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 850
    .local v2, "aotFolderExist":Z
    :goto_2
    if-nez v2, :cond_3

    .line 852
    const-string v7, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_3
    return-object v4

    .end local v2    # "aotFolderExist":Z
    :cond_4
    move v2, v7

    .line 849
    goto :goto_2
.end method

.method private initDB()V
    .locals 11

    .prologue
    .line 889
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 890
    .local v5, "mAOTDBList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v1, "aotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v7

    .line 893
    .local v7, "secureAOTMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v7}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->checkDBSync(Ljava/util/HashMap;)Z

    .line 895
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v5}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 896
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 898
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 899
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 903
    .local v3, "id":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_0

    .line 904
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v8, v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 905
    .local v6, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getAotMotherAppPkg()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->isSecureApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 898
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .restart local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 913
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    sget-object v8, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    array-length v0, v8

    .line 914
    .local v0, "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 915
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v8, v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    sget-object v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 917
    .restart local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 914
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 921
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 925
    .end local v0    # "N":I
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 927
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v8, v8

    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    div-int v9, v8, v9

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v8, v8

    iget v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    rem-int/2addr v8, v10

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_4
    add-int/2addr v8, v9

    iput v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 929
    return-void

    .line 927
    :cond_6
    const/4 v8, 0x1

    goto :goto_4
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 250
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090030

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 252
    .local v2, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    .line 254
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 255
    .local v3, "width":I
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 257
    .local v0, "height":I
    if-le v3, v0, :cond_0

    .line 258
    const/4 v4, 0x6

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 259
    const/4 v4, 0x2

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 265
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    .line 266
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    .line 268
    new-instance v4, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    const-string v6, "AotMenu"

    invoke-direct {v4, v5, v6}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    .line 270
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initDB()V

    .line 272
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    .line 276
    const v4, 0x102029a

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    .line 277
    const v4, 0x102029b

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    .line 278
    const v4, 0x102029c

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    .line 285
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    new-instance v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;

    invoke-direct {v5, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setRearCallback(Landroid/view/Window$RearCallback;)V

    .line 368
    return-void

    .line 261
    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 262
    const/4 v4, 0x3

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    goto :goto_0
.end method

.method private isSecureApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x1

    .line 809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSecretAppsFromDb()V
    .locals 18

    .prologue
    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 715
    const/4 v13, 0x0

    .line 716
    .local v13, "mUseSecretMode":Z
    const/4 v12, 0x0

    .line 718
    .local v12, "mLockSecretPanel":Z
    const/4 v10, 0x0

    .line 720
    .local v10, "SecretModecursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "is_registration"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "is_apps_hide_panel"

    aput-object v2, v3, v1

    .line 722
    .local v3, "select":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_MODE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 724
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 725
    .local v14, "recordCount":I
    if-lez v14, :cond_3

    .line 726
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 728
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v13, 0x1

    .line 729
    :goto_0
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v12, 0x1

    .line 741
    :goto_1
    if-eqz v10, :cond_0

    .line 742
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 745
    .end local v3    # "select":[Ljava/lang/String;
    .end local v14    # "recordCount":I
    :cond_0
    :goto_2
    const/4 v10, 0x0

    .line 747
    if-eqz v13, :cond_5

    const-string v1, "persist.vega.secretmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    if-nez v12, :cond_5

    .line 797
    :goto_3
    return-void

    .line 728
    .restart local v3    # "select":[Ljava/lang/String;
    .restart local v14    # "recordCount":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 729
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 732
    :cond_3
    const/4 v13, 0x0

    .line 733
    const/4 v12, 0x0

    goto :goto_1

    .line 736
    .end local v3    # "select":[Ljava/lang/String;
    .end local v14    # "recordCount":I
    :catch_0
    move-exception v11

    .line 737
    .local v11, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 738
    const/4 v12, 0x0

    .line 741
    if-eqz v10, :cond_0

    .line 742
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 741
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_4

    .line 742
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 752
    :cond_5
    const/4 v15, 0x0

    .line 754
    .local v15, "secretAppDBCursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 761
    :goto_4
    :try_start_2
    const-string v1, "package_name"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 764
    .local v17, "secret_pkg_name_column":I
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 765
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_9

    .line 767
    :try_start_3
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 768
    .local v16, "secretPkgName":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 771
    const-string v1, "com.pantech.app.skypen"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.pantech.app.minisketch"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 782
    :cond_6
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 786
    .end local v16    # "secretPkgName":Ljava/lang/String;
    .end local v17    # "secret_pkg_name_column":I
    :catch_1
    move-exception v11

    .line 787
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "AlwaysOnTopMenuMultiRC"

    const-string v2, "Read SECRET_CONTENT_URI error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 789
    if-eqz v15, :cond_7

    .line 790
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 796
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_6
    const/4 v15, 0x0

    .line 797
    goto :goto_3

    .line 755
    :catch_2
    move-exception v11

    .line 756
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "AlwaysOnTopMenuMultiRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 779
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "secret_pkg_name_column":I
    :catch_3
    move-exception v11

    .line 780
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "AlwaysOnTopMenuMultiRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECRET_CONTENT_URI loading interrupted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 782
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 789
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "secret_pkg_name_column":I
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_8

    .line 790
    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 793
    :catch_4
    move-exception v11

    .line 794
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "AlwaysOnTopMenuMultiRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 782
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "secret_pkg_name_column":I
    :catchall_2
    move-exception v1

    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 789
    :cond_9
    if-eqz v15, :cond_7

    .line 790
    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6
.end method

.method private setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V
    .locals 5
    .param p1, "aotView"    # Lcom/pantech/server/aot/menu/AotItem;
    .param p2, "index"    # I

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 625
    const-string v3, "AlwaysOnTopMenuMultiRC"

    const-string v4, "app id is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 629
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 632
    .local v2, "resId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 633
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 634
    .local v1, "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 635
    const v3, 0x10800d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 644
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 645
    const v3, 0x10406fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 647
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setText(I)V

    .line 648
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setDrawableResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 638
    .end local v1    # "imgId":Ljava/lang/Integer;
    :cond_4
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 639
    .restart local v1    # "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 640
    const v3, 0x10800d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 392
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 427
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 442
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 429
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->show()V

    goto :goto_0

    .line 433
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->hide()V

    goto :goto_0

    .line 438
    :sswitch_2
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
        0x410 -> :sswitch_2
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hide()V

    .line 407
    return-void
.end method

.method public hideAotMenuWindow()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public initWindow()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initView()V

    .line 240
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public makeAotItemOrder(Landroid/view/View;I)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 455
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 457
    check-cast v2, Landroid/view/ViewGroup;

    .line 458
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 460
    .local v1, "numChild":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 462
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->makeAotItemOrder(Landroid/view/View;I)I

    move-result p2

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "i":I
    .end local v1    # "numChild":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v3, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v3, :cond_1

    .line 468
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    add-int/lit8 p2, p2, 0x1

    .line 472
    :cond_1
    return p2
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1076
    :cond_0
    return-void
.end method

.method public rearrangeAotItems()V
    .locals 35

    .prologue
    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v5, v0

    .line 933
    .local v5, "N":I
    const/4 v12, 0x0

    .line 935
    .local v12, "focus_index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    .line 936
    const-string v31, "AlwaysOnTopMenuMultiRC"

    const-string v32, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const/16 v28, 0x0

    .line 943
    .local v28, "specialAppLayout":Landroid/widget/LinearLayout;
    if-nez v5, :cond_2

    .line 944
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x104070f

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 949
    :cond_2
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 951
    const-string v31, "persist.launcher2.aotfolder"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_3

    const/4 v6, 0x1

    .line 953
    .local v6, "aotFolderExist":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v31

    if-nez v31, :cond_9

    .line 956
    const/4 v14, 0x0

    .local v14, "i":I
    move v13, v12

    .end local v12    # "focus_index":I
    .local v13, "focus_index":I
    :goto_2
    if-ge v14, v5, :cond_8

    .line 957
    new-instance v16, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 959
    .local v16, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "focus_index":I
    .restart local v12    # "focus_index":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 960
    if-nez v14, :cond_4

    .line 961
    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusLeftId(I)V

    .line 966
    :goto_3
    add-int/lit8 v31, v14, 0x1

    move/from16 v0, v31

    if-lt v0, v5, :cond_5

    .line 967
    add-int/lit8 v31, v12, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusRightId(I)V

    .line 972
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_6

    .line 973
    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 977
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    add-int v31, v31, v14

    move/from16 v0, v31

    if-lt v0, v5, :cond_7

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->ITEM_START_ID:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    add-int v31, v31, v5

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 983
    :goto_6
    const/16 v31, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 985
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v14

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    aget-object v32, v32, v14

    invoke-virtual/range {v32 .. v32}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    aget-object v32, v32, v14

    invoke-virtual/range {v32 .. v32}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v32

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12    # "focus_index":I
    .restart local v13    # "focus_index":I
    goto/16 :goto_2

    .line 951
    .end local v6    # "aotFolderExist":Z
    .end local v13    # "focus_index":I
    .end local v14    # "i":I
    .end local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    .restart local v12    # "focus_index":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 964
    .restart local v6    # "aotFolderExist":Z
    .restart local v14    # "i":I
    .restart local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_4
    add-int/lit8 v31, v12, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusLeftId(I)V

    goto/16 :goto_3

    .line 970
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusRightId(I)V

    goto/16 :goto_4

    .line 975
    :cond_6
    add-int/lit8 v31, v12, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    goto/16 :goto_5

    .line 981
    :cond_7
    add-int/lit8 v31, v12, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    goto/16 :goto_6

    .end local v12    # "focus_index":I
    .end local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    .restart local v13    # "focus_index":I
    :cond_8
    move v12, v13

    .line 996
    .end local v13    # "focus_index":I
    .end local v14    # "i":I
    .restart local v12    # "focus_index":I
    :cond_9
    const/16 v29, 0x0

    .line 997
    .local v29, "vg":Landroid/view/ViewGroup;
    const/16 v21, 0x0

    .line 1000
    .local v21, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1001
    .local v9, "density":F
    const/high16 v31, 0x427c0000    # 63.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 1002
    .local v30, "width":I
    const/high16 v31, 0x41a80000    # 21.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1005
    .local v19, "margin":I
    const/high16 v31, 0x41a00000    # 20.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1006
    .local v17, "lastpagebottom":I
    const/high16 v31, 0x40800000    # 4.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v7, v0

    .line 1007
    .local v7, "compagebottom":I
    const/high16 v31, 0x428c0000    # 70.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v15, v0

    .line 1008
    .local v15, "icon_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v24

    .line 1009
    .local v24, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v22

    .line 1010
    .local v22, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v23

    .line 1012
    .local v23, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1013
    .local v11, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1014
    .local v10, "dsp_height":I
    if-le v11, v10, :cond_a

    .line 1015
    const/16 v19, 0x70

    .line 1016
    const/high16 v31, 0x41400000    # 12.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1017
    const/high16 v31, 0x40400000    # 3.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v7, v0

    .line 1020
    :cond_a
    const/4 v8, 0x0

    .line 1021
    .local v8, "curIndex":I
    const/16 v20, 0x0

    .local v20, "nCursor":I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pantech/server/aot/menu/AotItem;

    .line 1027
    .local v27, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    if-nez v27, :cond_b

    .line 1028
    const-string v31, "AlwaysOnTopMenuMultiRC"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sourceView is null!!:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 1032
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    rem-int v21, v8, v31

    .line 1034
    add-int/lit8 v31, v5, -0x1

    move/from16 v0, v31

    if-lt v8, v0, :cond_d

    .line 1035
    move/from16 v25, v17

    .line 1039
    .local v25, "pagebottom":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v8, v0, :cond_e

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 1041
    const/16 v26, 0x0

    .line 1050
    .local v26, "pagetop":I
    :goto_a
    add-int v31, v24, v26

    move-object/from16 v0, v29

    move/from16 v1, v22

    move/from16 v2, v31

    move/from16 v3, v23

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1052
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1053
    .local v18, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 1054
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v19

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1057
    :cond_c
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 1058
    if-eqz v29, :cond_10

    .line 1059
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 1037
    .end local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "pagebottom":I
    .end local v26    # "pagetop":I
    :cond_d
    move/from16 v25, v7

    .restart local v25    # "pagebottom":I
    goto :goto_9

    .line 1042
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    if-ge v8, v0, :cond_f

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 1044
    add-int v26, v15, v7

    .restart local v26    # "pagetop":I
    goto :goto_a

    .line 1046
    .end local v26    # "pagetop":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 1047
    add-int v31, v15, v7

    mul-int/lit8 v26, v31, 0x2

    .restart local v26    # "pagetop":I
    goto/16 :goto_a

    .line 1061
    .restart local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    const-string v31, "AlwaysOnTopMenuMultiRC"

    const-string v32, "vg is null!!!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public rearrangeAotItems_Old()V
    .locals 36

    .prologue
    .line 477
    sget-object v32, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v5, v0

    .line 478
    .local v5, "N":I
    const/4 v7, 0x0

    .line 479
    .local v7, "bInit":Z
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 481
    .local v30, "viewTag":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    .line 482
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    return-void

    .line 486
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    if-nez v32, :cond_6

    .line 487
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v15, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v5, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 492
    .local v27, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v27, :cond_2

    invoke-virtual/range {v27 .. v27}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v32

    if-eqz v32, :cond_3

    .line 489
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 496
    :cond_3
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 499
    .end local v27    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 500
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 505
    .end local v13    # "i":I
    .end local v15    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :goto_2
    const-string v32, "persist.launcher2.aotfolder"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_7

    const/4 v6, 0x1

    .line 507
    .local v6, "aotFolderExist":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->size()I

    move-result v32

    if-nez v32, :cond_8

    .line 508
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    const-string v33, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 509
    add-int/lit8 v5, v5, -0x1

    .line 510
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v5, :cond_8

    .line 511
    new-instance v16, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 513
    .local v16, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v32, v13, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 514
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 515
    add-int/lit8 v32, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 516
    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    sget-object v32, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v32, v32, v13

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 502
    .end local v6    # "aotFolderExist":Z
    .end local v13    # "i":I
    .end local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v5, v0

    goto/16 :goto_2

    .line 505
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 533
    .restart local v6    # "aotFolderExist":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 537
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "rearrangeAotItems : Maybe, it is first time !!!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v7, 0x1

    .line 542
    :cond_9
    const/16 v29, 0x0

    .line 544
    .local v29, "vg":Landroid/view/ViewGroup;
    const/16 v21, 0x0

    .line 547
    .local v21, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 548
    .local v10, "density":F
    const/high16 v32, 0x427c0000    # 63.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 549
    .local v31, "width":I
    const/high16 v32, 0x41a80000    # 21.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v19, v0

    .line 552
    .local v19, "margin":I
    const/high16 v32, 0x41a00000    # 20.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    .line 553
    .local v17, "lastpagebottom":I
    const/high16 v32, 0x40800000    # 4.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v8, v0

    .line 554
    .local v8, "compagebottom":I
    const/high16 v32, 0x428c0000    # 70.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v14, v0

    .line 555
    .local v14, "icon_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v24

    .line 556
    .local v24, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v22

    .line 557
    .local v22, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v23

    .line 559
    .local v23, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 560
    .local v12, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 561
    .local v11, "dsp_height":I
    if-le v12, v11, :cond_a

    .line 562
    const/16 v19, 0x70

    .line 563
    const/high16 v32, 0x41400000    # 12.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    .line 564
    const/high16 v32, 0x40400000    # 3.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v8, v0

    .line 567
    :cond_a
    const/4 v9, 0x0

    .line 568
    .local v9, "curIndex":I
    const/16 v20, 0x0

    .local v20, "nCursor":I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    .line 572
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v7, v0, :cond_b

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v20

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/server/aot/menu/AotItem;

    .line 578
    .local v28, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :goto_6
    if-nez v28, :cond_c

    .line 579
    const-string v32, "AlwaysOnTopMenuMultiRC"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sourceView is null!!:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 575
    .end local v28    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    aget-object v33, v30, v9

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/server/aot/menu/AotItem;

    .restart local v28    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    goto :goto_6

    .line 583
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    rem-int v21, v9, v32

    .line 586
    add-int/lit8 v32, v5, -0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_e

    .line 587
    move/from16 v25, v17

    .line 591
    .local v25, "pagebottom":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v9, v0, :cond_f

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 593
    const/16 v26, 0x0

    .line 602
    .local v26, "pagetop":I
    :goto_9
    add-int v32, v24, v26

    move-object/from16 v0, v29

    move/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v23

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 604
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    .local v18, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 606
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v19

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 609
    :cond_d
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 610
    if-eqz v29, :cond_11

    .line 611
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 615
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 589
    .end local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "pagebottom":I
    .end local v26    # "pagetop":I
    :cond_e
    move/from16 v25, v8

    .restart local v25    # "pagebottom":I
    goto :goto_8

    .line 594
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    if-ge v9, v0, :cond_10

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 596
    add-int v26, v14, v8

    .restart local v26    # "pagetop":I
    goto :goto_9

    .line 598
    .end local v26    # "pagetop":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 599
    add-int v32, v14, v8

    mul-int/lit8 v26, v32, 0x2

    .restart local v26    # "pagetop":I
    goto/16 :goto_9

    .line 613
    .restart local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_11
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "vg is null!!!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindowCallback:Landroid/view/Window$Callback;

    .line 384
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 373
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initView()V

    .line 374
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems()V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->show()V

    .line 399
    return-void
.end method

.method public showAotMenuWindow()Z
    .locals 2

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    const/4 v0, 0x1

    goto :goto_0
.end method
