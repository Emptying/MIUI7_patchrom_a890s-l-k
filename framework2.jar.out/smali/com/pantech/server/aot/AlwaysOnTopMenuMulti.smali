.class public Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;
.super Lcom/pantech/server/aot/AlwaysOnTopMenu;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/pantech/server/aot/drag/DragLayer$Callback;


# static fields
.field static final AOT_ITEMS_PER_PAGE:I = 0x5

.field public static final AlwaysOnTopIdList:[Ljava/lang/String;

.field static final BAR_HEIGHT:I = 0xb7

.field static final DEBUG:Z = false

.field static final ICON_WIDTH:I = 0x3f

.field static final LAND_BAR_HEIGHT:I = 0xa8

.field static final LAND_MARGIN_SIZE:I = 0x39

.field static final MARGIN_SIZE:I = 0x2

.field static final MSG_HIDE_AOT_MENU_WINDOW:I = 0x3fc

.field static final MSG_SHOW_AOT_MENU_WINDOW:I = 0x3f2

.field static final SECRET_CONTENT_URI:Landroid/net/Uri;

.field static final TABLE_ROW_PADDING:I = 0xd

.field public static final TAG:Ljava/lang/String; = "AlwaysOnTopMenuMulti"


# instance fields
.field AOT_ITEM_PAGES:I

.field ITEM_START_ID:I

.field private aotItemClickListener:Landroid/view/View$OnClickListener;

.field private aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

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

.field final mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

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

.field private mDragController:Lcom/pantech/server/aot/drag/DragController;

.field private mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

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

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->SECRET_CONTENT_URI:Landroid/net/Uri;

    .line 110
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 108
    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    .line 126
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x1040701

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10406fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x1040700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x1040702

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x1040703

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x1040704

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10406fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10406ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10406fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x1040705

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x104070e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x104070d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    .line 142
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x10800cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x10800c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    .line 158
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x10800cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x10800c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 179
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsCalling:Z

    .line 180
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    .line 658
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$5;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$5;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    .line 929
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    .line 980
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$9;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$9;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 204
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotList:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "AlwaysOnTopMenuMulti"

    const-string v1, "AlwaysOnTopMenuMulti(): Always on top list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .line 210
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    .line 211
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mPm:Landroid/content/pm/PackageManager;

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    iput-object p0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .line 217
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mPm:Landroid/content/pm/PackageManager;

    .line 219
    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsCalling:Z

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Lcom/pantech/server/aot/menu/AotContainer;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

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

    .line 1191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1192
    .local v0, "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1193
    .local v1, "hashSize":I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1194
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1195
    .local v4, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1197
    .local v3, "isAdd":Z
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0, v9}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1198
    const/4 v8, 0x0

    .line 1217
    :goto_0
    return v8

    .line 1201
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1203
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1205
    .local v6, "order":I
    if-eqz v6, :cond_1

    .line 1206
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1208
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const/4 v3, 0x1

    .line 1201
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1214
    .end local v6    # "order":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 1215
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    :cond_3
    move v8, v9

    .line 1217
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

    .line 1145
    new-instance v6, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const-string v9, "AotMenuSecure"

    invoke-direct {v6, v8, v9}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1146
    .local v6, "testFile":Lcom/pantech/server/aot/menu/AotListFile;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1166
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1167
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->loadSecretAppsFromDb()V

    .line 1169
    :cond_0
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 1171
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1172
    aget-object v8, v1, v3

    aget-object v9, v1, v3

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1174
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1175
    aget-object v8, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    aget-object v8, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1181
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v8, "persist.launcher2.aotfolder"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 1182
    .local v2, "aotFolderExist":Z
    :goto_2
    if-nez v2, :cond_3

    .line 1184
    const-string v7, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_3
    return-object v4

    .end local v2    # "aotFolderExist":Z
    :cond_4
    move v2, v7

    .line 1181
    goto :goto_2
.end method

.method private initDB()V
    .locals 11

    .prologue
    .line 1221
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .local v6, "mAOTDBList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v1, "aotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v8

    .line 1225
    .local v8, "secureAOTMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v8}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->checkDBSync(Ljava/util/HashMap;)Z

    .line 1227
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v9, v6}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1228
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 1230
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_5

    .line 1231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1233
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1235
    .local v4, "index":Ljava/lang/Integer;
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1236
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1237
    .local v7, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getAotMotherAppPkg()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->isSecureApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1230
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1241
    .restart local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1245
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "length":I
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    sget-object v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    array-length v0, v9

    .line 1246
    .local v0, "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 1247
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1249
    .restart local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v9

    if-eqz v9, :cond_4

    .line 1246
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1253
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1257
    .end local v0    # "N":I
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1259
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v9, v9

    div-int/lit8 v10, v9, 0x5

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v9, v9

    rem-int/lit8 v9, v9, 0x5

    if-nez v9, :cond_6

    const/4 v9, 0x0

    :goto_4
    add-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 1261
    return-void

    .line 1259
    :cond_6
    const/4 v9, 0x1

    goto :goto_4
.end method

.method private initView()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    .line 237
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    div-int/lit8 v6, v9, 0x5

    .line 238
    .local v6, "pageCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 241
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 243
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x109002e

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 245
    .local v7, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getWindow()Landroid/view/Window;

    move-result-object v9

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    .line 247
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .line 248
    .local v2, "density":F
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 249
    .local v1, "barWidth":I
    const/high16 v9, 0x43370000    # 183.0f

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 251
    .local v0, "barHeight":I
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 252
    .local v8, "width":I
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 254
    .local v3, "height":I
    if-le v8, v3, :cond_1

    .line 255
    const/high16 v9, 0x43280000    # 168.0f

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 256
    const/4 v5, 0x1

    .line 261
    .local v5, "isLand":Z
    :goto_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    .line 262
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    .line 264
    new-instance v9, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const-string v11, "AotMenu"

    invoke-direct {v9, v10, v11}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    .line 266
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initDB()V

    .line 268
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v7, v10}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    const v9, 0x1020299

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/aot/menu/AotContainer;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    .line 272
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->setMaxPage(I)V

    .line 273
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, p0}, Lcom/pantech/server/aot/menu/AotContainer;->setAnimationEndListener(Lcom/pantech/server/aot/AlwaysOnTopMenu;)V

    .line 274
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    new-instance v10, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;

    invoke-direct {v10, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->setChangedChildViewListener(Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;)V

    .line 305
    const v9, 0x1020297

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    .line 306
    const v9, 0x1020298

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    .line 307
    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    if-ne v9, v13, :cond_0

    .line 308
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :cond_0
    const v9, 0x102029a

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    .line 312
    const v9, 0x102029b

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    .line 313
    const v9, 0x102029c

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    .line 314
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    packed-switch v9, :pswitch_data_0

    .line 326
    :goto_1
    new-instance v9, Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/pantech/server/aot/drag/DragController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    .line 327
    const v9, 0x1020295

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/aot/drag/DragLayer;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    .line 328
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragLayer;->setDragController(Lcom/pantech/server/aot/drag/DragController;)V

    .line 329
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragLayer;->setChildLayout(Landroid/view/ViewGroup;)V

    .line 330
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, p0}, Lcom/pantech/server/aot/drag/DragLayer;->setDragLayerCallback(Lcom/pantech/server/aot/drag/DragLayer$Callback;)V

    .line 332
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setScrollView(Landroid/view/View;)V

    .line 333
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragScoller(Lcom/pantech/server/aot/drag/DragScroller;)V

    .line 334
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragListener(Lcom/pantech/server/aot/drag/DragController$DragListener;)V

    .line 335
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragLayer(Landroid/view/View;)V

    .line 342
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    new-instance v10, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$2;

    invoke-direct {v10, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setRearCallback(Landroid/view/Window$RearCallback;)V

    .line 424
    return-void

    .line 258
    .end local v5    # "isLand":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "isLand":Z
    goto/16 :goto_0

    .line 319
    :pswitch_0
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 323
    :pswitch_1
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initWindow_Old()V
    .locals 11

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 429
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x109002e

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 431
    .local v6, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getWindow()Landroid/view/Window;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    .line 433
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 434
    .local v2, "density":F
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 435
    .local v1, "barWidth":I
    const/high16 v8, 0x43370000    # 183.0f

    mul-float/2addr v8, v2

    float-to-int v0, v8

    .line 437
    .local v0, "barHeight":I
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 438
    .local v7, "width":I
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 440
    .local v3, "height":I
    if-le v7, v3, :cond_1

    .line 441
    const/high16 v8, 0x43280000    # 168.0f

    mul-float/2addr v8, v2

    float-to-int v0, v8

    .line 442
    const/4 v5, 0x1

    .line 447
    .local v5, "isLand":Z
    :goto_0
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6, v9}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    const v8, 0x1020299

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pantech/server/aot/menu/AotContainer;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    .line 451
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/menu/AotContainer;->setMaxPage(I)V

    .line 452
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v8, p0}, Lcom/pantech/server/aot/menu/AotContainer;->setAnimationEndListener(Lcom/pantech/server/aot/AlwaysOnTopMenu;)V

    .line 453
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    new-instance v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;

    invoke-direct {v9, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/menu/AotContainer;->setChangedChildViewListener(Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;)V

    .line 469
    const v8, 0x1020297

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    .line 470
    const v8, 0x1020298

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    .line 472
    const v8, 0x102029a

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    .line 473
    const v8, 0x102029b

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    .line 474
    const v8, 0x102029c

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    .line 475
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 477
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    new-instance v8, Lcom/pantech/server/aot/drag/DragController;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/pantech/server/aot/drag/DragController;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    .line 480
    const v8, 0x1020295

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pantech/server/aot/drag/DragLayer;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    .line 481
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragLayer;->setDragController(Lcom/pantech/server/aot/drag/DragController;)V

    .line 482
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragLayer;->setChildLayout(Landroid/view/ViewGroup;)V

    .line 483
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v8, p0}, Lcom/pantech/server/aot/drag/DragLayer;->setDragLayerCallback(Lcom/pantech/server/aot/drag/DragLayer$Callback;)V

    .line 485
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragController;->setScrollView(Landroid/view/View;)V

    .line 486
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragController;->setDragScoller(Lcom/pantech/server/aot/drag/DragScroller;)V

    .line 487
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragController;->setDragListener(Lcom/pantech/server/aot/drag/DragController$DragListener;)V

    .line 488
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/drag/DragController;->setDragLayer(Landroid/view/View;)V

    .line 490
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    .line 491
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    .line 493
    new-instance v8, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const-string v10, "AotMenu"

    invoke-direct {v8, v9, v10}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    .line 499
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v8, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V

    .line 504
    :cond_0
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    new-instance v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$4;

    invoke-direct {v9, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$4;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setRearCallback(Landroid/view/Window$RearCallback;)V

    .line 586
    return-void

    .line 444
    .end local v5    # "isLand":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "isLand":Z
    goto/16 :goto_0
.end method

.method private isSecureApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    const/4 v0, 0x1

    .line 1141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSecretAppsFromDb()V
    .locals 10

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1086
    const-string v0, "persist.vega.secretmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1091
    :cond_0
    const/4 v7, 0x0

    .line 1093
    .local v7, "secretAppDBCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->SECRET_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 1100
    :goto_1
    :try_start_1
    const-string v0, "package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1103
    .local v9, "secret_pkg_name_column":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1104
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1106
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1107
    .local v8, "secretPkgName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1116
    :cond_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1120
    .end local v8    # "secretPkgName":Ljava/lang/String;
    .end local v9    # "secret_pkg_name_column":I
    :catch_0
    move-exception v6

    .line 1121
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "AlwaysOnTopMenuMulti"

    const-string v1, "Read SECRET_CONTENT_URI error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1123
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1125
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1126
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMulti"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 1095
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMulti"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1113
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "secret_pkg_name_column":I
    :catch_3
    move-exception v6

    .line 1114
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "AlwaysOnTopMenuMulti"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1116
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1123
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "secret_pkg_name_column":I
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1116
    .restart local v9    # "secret_pkg_name_column":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1123
    :cond_2
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0
.end method

.method public static setShowOnList(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 1037
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1038
    .local v3, "aotOrder":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1039
    .local v5, "count":I
    const/4 v0, 0x0

    .line 1040
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1041
    .local v4, "bInit":Z
    new-array v9, v0, [Ljava/lang/String;

    .line 1043
    .local v9, "viewTag":[Ljava/lang/String;
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 1046
    if-nez p0, :cond_0

    .line 1047
    const-string v10, "AlwaysOnTopMenuMulti"

    const-string v11, "setShowOnList fail. context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v10, 0x0

    .line 1080
    :goto_0
    return v10

    .line 1051
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    move v6, v5

    .end local v5    # "count":I
    .local v6, "count":I
    :goto_1
    if-ge v7, v0, :cond_2

    .line 1052
    aget-object v10, v1, v7

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1054
    .local v8, "isCmp":Z
    if-eqz v8, :cond_1

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    .line 1055
    :cond_1
    aget-object v10, v1, v7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_1

    .line 1059
    .end local v8    # "isCmp":Z
    :cond_2
    new-instance v2, Lcom/pantech/server/aot/menu/AotListFile;

    const-string v10, "AotMenu"

    invoke-direct {v2, p0, v10}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1061
    .local v2, "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    array-length v10, v9

    invoke-virtual {v2, v9, v10, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1062
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v5, v6

    .line 1080
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 1064
    .end local v5    # "count":I
    .restart local v6    # "count":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1065
    const/4 v5, 0x0

    .line 1066
    .end local v6    # "count":I
    .restart local v5    # "count":I
    const/4 v7, 0x0

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    :goto_4
    if-ge v7, v0, :cond_6

    .line 1067
    aget-object v10, v9, v7

    if-nez v10, :cond_4

    move v5, v6

    .line 1066
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_4

    .line 1069
    :cond_4
    aget-object v10, v9, v7

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1070
    .restart local v8    # "isCmp":Z
    if-eqz v8, :cond_5

    if-eqz v8, :cond_8

    if-eqz p2, :cond_8

    :cond_5
    aget-object v10, v9, v7

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1071
    aget-object v10, v9, v7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1073
    .end local v5    # "count":I
    .end local v8    # "isCmp":Z
    .restart local v6    # "count":I
    :cond_6
    if-eqz p2, :cond_7

    .line 1074
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    .line 1075
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_7
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_3

    .end local v5    # "count":I
    .restart local v6    # "count":I
    .restart local v8    # "isCmp":Z
    :cond_8
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_5

    .end local v2    # "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    .end local v5    # "count":I
    .restart local v6    # "count":I
    :cond_9
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_2
.end method

.method private setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V
    .locals 5
    .param p1, "aotView"    # Lcom/pantech/server/aot/menu/AotItem;
    .param p2, "index"    # I

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 897
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 899
    const-string v3, "AlwaysOnTopMenuMulti"

    const-string v4, "app id is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 903
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 906
    .local v2, "resId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 907
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 908
    .local v1, "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 909
    const v3, 0x10800d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 918
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 919
    const v3, 0x10406fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 921
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setText(I)V

    .line 922
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setDrawableResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 912
    .end local v1    # "imgId":Ljava/lang/Integer;
    :cond_4
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 913
    .restart local v1    # "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 914
    const v3, 0x10800d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 609
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 610
    return-void
.end method

.method public dragHandler(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1032
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1026
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->endDrag()Z

    move-result v0

    goto :goto_0

    .line 1029
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->endDrag()Z

    move-result v0

    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    .line 1018
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    .line 1019
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 1020
    return-void
.end method

.method public endDrag()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1005
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0}, Lcom/pantech/server/aot/drag/DragController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    .line 1008
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    .line 1009
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 1011
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 645
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 655
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 647
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->show()V

    goto :goto_0

    .line 651
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->hide()V

    goto :goto_0

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 624
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hide()V

    .line 625
    return-void
.end method

.method public hideAotMenuWindow()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 638
    return-void
.end method

.method public initWindow()V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initView()V

    .line 229
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public makeAotItemOrder(Landroid/view/View;I)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 668
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 670
    check-cast v2, Landroid/view/ViewGroup;

    .line 671
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 673
    .local v1, "numChild":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 675
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    move-result p2

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    .end local v0    # "i":I
    .end local v1    # "numChild":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v3, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v3, :cond_1

    .line 681
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    add-int/lit8 p2, p2, 0x1

    .line 685
    :cond_1
    return p2
.end method

.method public rearrangeAotItems()V
    .locals 29

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v5, v0

    .line 1265
    .local v5, "N":I
    const/4 v11, 0x0

    .line 1268
    .local v11, "focus_index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 1269
    const-string v25, "AlwaysOnTopMenuMulti"

    const-string v26, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    const/16 v22, 0x0

    .line 1361
    .local v22, "specialAppLayout":Landroid/widget/LinearLayout;
    if-nez v5, :cond_2

    .line 1376
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x104070f

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1382
    :cond_2
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 1384
    const-string v25, "persist.launcher2.aotfolder"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_5

    const/4 v6, 0x1

    .line 1386
    .local v6, "aotFolderExist":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    if-nez v25, :cond_7

    .line 1389
    const/4 v13, 0x0

    .local v13, "i":I
    move v12, v11

    .end local v11    # "focus_index":I
    .local v12, "focus_index":I
    :goto_2
    if-ge v13, v5, :cond_6

    .line 1390
    new-instance v15, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v15, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "focus_index":I
    .restart local v11    # "focus_index":I
    invoke-virtual {v15, v12}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 1393
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    add-int v25, v25, v5

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 1395
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 1396
    rem-int/lit8 v18, v13, 0x5

    .line 1398
    .local v18, "moveIndex":I
    if-eqz v18, :cond_3

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    const/16 v25, 0x4

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1399
    :cond_3
    move v14, v13

    .line 1400
    .local v14, "index":I
    new-instance v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$10;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;I)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1432
    .end local v14    # "index":I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v25, v0

    aget-object v25, v25, v13

    invoke-virtual/range {v25 .. v25}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v26, v0

    aget-object v26, v26, v13

    invoke-virtual/range {v26 .. v26}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v26, v0

    aget-object v26, v26, v13

    invoke-virtual/range {v26 .. v26}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v26

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    add-int/lit8 v13, v13, 0x1

    move v12, v11

    .end local v11    # "focus_index":I
    .restart local v12    # "focus_index":I
    goto/16 :goto_2

    .line 1384
    .end local v6    # "aotFolderExist":Z
    .end local v12    # "focus_index":I
    .end local v13    # "i":I
    .end local v15    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    .end local v18    # "moveIndex":I
    .restart local v11    # "focus_index":I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .end local v11    # "focus_index":I
    .restart local v6    # "aotFolderExist":Z
    .restart local v12    # "focus_index":I
    .restart local v13    # "i":I
    :cond_6
    move v11, v12

    .line 1445
    .end local v12    # "focus_index":I
    .end local v13    # "i":I
    .restart local v11    # "focus_index":I
    :cond_7
    const/16 v23, 0x0

    .line 1446
    .local v23, "vg":Landroid/view/ViewGroup;
    const/16 v20, 0x0

    .line 1449
    .local v20, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1450
    .local v8, "density":F
    const/high16 v25, 0x427c0000    # 63.0f

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1451
    .local v24, "width":I
    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1453
    .local v17, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1454
    .local v10, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1455
    .local v9, "dsp_height":I
    if-le v10, v9, :cond_8

    .line 1456
    const/high16 v25, 0x42640000    # 57.0f

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1459
    :cond_8
    const/4 v7, 0x0

    .line 1460
    .local v7, "curIndex":I
    const/16 v19, 0x0

    .local v19, "nCursor":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v26, v0

    aget-object v26, v26, v19

    invoke-virtual/range {v26 .. v26}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/pantech/server/aot/menu/AotItem;

    .line 1466
    .local v21, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    if-nez v21, :cond_9

    .line 1467
    const-string v25, "AlwaysOnTopMenuMulti"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "sourceView is null!!:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1471
    :cond_9
    rem-int/lit8 v20, v7, 0x5

    .line 1473
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ge v7, v0, :cond_b

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    .line 1481
    :goto_5
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1482
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0x5

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 1483
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v17

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1486
    :cond_a
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 1487
    if-eqz v23, :cond_d

    .line 1488
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1475
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    const/16 v25, 0xa

    move/from16 v0, v25

    if-ge v7, v0, :cond_c

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    goto :goto_5

    .line 1478
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    goto :goto_5

    .line 1490
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    const-string v25, "AlwaysOnTopMenuMulti"

    const-string v26, "vg is null!!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public rearrangeAotItems_Old()V
    .locals 28

    .prologue
    .line 690
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v5, v0

    .line 691
    .local v5, "N":I
    const/4 v7, 0x0

    .line 692
    .local v7, "bInit":Z
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 694
    .local v22, "viewTag":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 695
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    return-void

    .line 699
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    if-nez v24, :cond_8

    .line 700
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v13, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_4

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 705
    .local v19, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v24

    if-eqz v24, :cond_3

    .line 702
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 709
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 712
    .end local v19    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 713
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 778
    .end local v12    # "i":I
    .end local v13    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :goto_2
    const-string v24, "persist.launcher2.aotfolder"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_9

    const/4 v6, 0x1

    .line 780
    .local v6, "aotFolderExist":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-nez v24, :cond_c

    .line 781
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_5

    .line 782
    add-int/lit8 v5, v5, -0x1

    .line 783
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v5, :cond_c

    .line 784
    new-instance v14, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 786
    .local v14, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 787
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 788
    add-int/lit8 v24, v5, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 789
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 794
    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v12, v0, :cond_6

    if-nez v12, :cond_a

    .line 795
    :cond_6
    new-instance v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 816
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 820
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 715
    .end local v6    # "aotFolderExist":Z
    .end local v12    # "i":I
    .end local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v5, v0

    goto/16 :goto_2

    .line 778
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 804
    .restart local v6    # "aotFolderExist":Z
    .restart local v12    # "i":I
    .restart local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_a
    const/16 v24, 0x5

    move/from16 v0, v24

    if-eq v12, v0, :cond_b

    add-int/lit8 v24, v5, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_7

    .line 805
    :cond_b
    new-instance v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$7;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_5

    .line 829
    .end local v12    # "i":I
    .end local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 833
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "rearrangeAotItems : Maybe, it is first time !!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v7, 0x1

    .line 838
    :cond_d
    const/16 v21, 0x0

    .line 839
    .local v21, "vg":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 842
    .local v18, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 843
    .local v9, "density":F
    const/high16 v24, 0x427c0000    # 63.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 844
    .local v23, "width":I
    const/high16 v24, 0x40000000    # 2.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 846
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 847
    .local v11, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 848
    .local v10, "dsp_height":I
    if-le v11, v10, :cond_e

    .line 849
    const/high16 v24, 0x42640000    # 57.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 852
    :cond_e
    const/4 v8, 0x0

    .line 853
    .local v8, "curIndex":I
    const/16 v17, 0x0

    .local v17, "nCursor":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 857
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v7, v0, :cond_f

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/server/aot/menu/AotItem;

    .line 863
    .local v20, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :goto_7
    if-nez v20, :cond_10

    .line 864
    const-string v24, "AlwaysOnTopMenuMulti"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sourceView is null!!:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 860
    .end local v20    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v25, v22, v8

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/server/aot/menu/AotItem;

    .restart local v20    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    goto :goto_7

    .line 868
    :cond_10
    rem-int/lit8 v18, v8, 0x5

    .line 870
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v8, v0, :cond_12

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    .line 878
    :goto_9
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 879
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x5

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 880
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 883
    :cond_11
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 884
    if-eqz v21, :cond_14

    .line 885
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 889
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 872
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v8, v0, :cond_13

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    goto :goto_9

    .line 875
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    goto :goto_9

    .line 887
    .restart local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "vg is null!!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindowCallback:Landroid/view/Window$Callback;

    .line 602
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 591
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initView()V

    .line 592
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 616
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->show()V

    .line 617
    return-void
.end method

.method public showAotMenuWindow()Z
    .locals 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 632
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/pantech/server/aot/drag/DragSource;

    move-object v1, v0

    .line 993
    .local v1, "dragSource":Lcom/pantech/server/aot/drag/DragSource;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    sget v4, Lcom/pantech/server/aot/drag/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, p1, v1, v1, v4}, Lcom/pantech/server/aot/drag/DragController;->startDrag(Landroid/view/View;Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V

    .line 994
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v3, v4}, Lcom/pantech/server/aot/drag/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    .line 995
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    const/4 v3, 0x1

    .line 999
    .end local v1    # "dragSource":Lcom/pantech/server/aot/drag/DragSource;
    :goto_0
    return v3

    .line 998
    :catch_0
    move-exception v2

    .line 999
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
