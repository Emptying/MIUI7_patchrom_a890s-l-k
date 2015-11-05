.class public Landroid/alwaysontopservice/AlwaysOnTopService;
.super Landroid/app/Service;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;
    }
.end annotation


# static fields
.field public static final ALWAYSONTOP_ID:Ljava/lang/String; = "aot_id"

.field static final DEBUG:Z = false

.field static final DEBUG_POS:Z = false

.field static final MINI_MODE_OFF:I = 0x0

.field static final MINI_MODE_ON:I = 0x1

.field static final MSG_CHANGE_MINI_MODE:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopService"

.field static final TAG_POSITION:Ljava/lang/String; = "AlwaysOnTopService_POS"

.field static final mCoverViewBottom:I = 0x2b5

.field static mFinishMiniMode:Z

.field static mFrameHeight:I

.field static mFrameWidth:I

.field static mRawPosition:[I

.field static mRestoreMode:Z

.field static mSavePosition:[I

.field static windowX:I

.field static windowY:I


# instance fields
.field aotMayMove:Z

.field check:Z

.field configOrientation:I

.field configTypeface:I

.field mActionBtn:Landroid/widget/ImageButton;

.field mActionBtnListener:Landroid/view/View$OnClickListener;

.field mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

.field mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

.field mAlwayOnTitleBar:Landroid/widget/LinearLayout;

.field mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

.field mAlwayOnTitleView:Landroid/widget/LinearLayout;

.field mAlwayOnTopFrame:Landroid/widget/LinearLayout;

.field mAlwaysOnStarted:Z

.field mAlwaysOnView:Landroid/view/View;

.field mAlwaysOnViewStarted:Z

.field mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

.field mCloseBtn:Landroid/widget/ImageButton;

.field mCloseBtnListener:Landroid/view/View$OnClickListener;

.field mCurId:Ljava/lang/String;

.field mDevorView:Landroid/view/View;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field mFramePosition:[I

.field mGravityBottom:Z

.field mHandler:Landroid/os/Handler;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitViewPos:Z

.field mInitialized:Z

.field mIsAlwaysOnViewShown:Z

.field mIsFullscreen:Z

.field mLeft:I

.field mMaxBtn:Landroid/widget/ImageButton;

.field mMinBtn:Landroid/widget/ImageButton;

.field mMiniMode:Z

.field mMiniModeEnable:Z

.field mMiniTitleView:Landroid/widget/TextView;

.field mMiniView:Landroid/view/View;

.field mMoveVisibleWindow:Z

.field mMoveX:I

.field mMoveY:I

.field mRootView:Landroid/view/View;

.field mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

.field mShowAlwaysOnFlags:I

.field mShowAlwaysOnForced:Z

.field mShowAlwaysOnRequested:Z

.field mSkipBackKey:Z

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field mTitleBarViewEx:Landroid/view/View;

.field mTitleMove:Z

.field mTitleMoveListener:Landroid/view/View$OnTouchListener;

.field mTitleView:Landroid/widget/TextView;

.field mToken:Landroid/os/IBinder;

.field mTop:I

.field mUseIME:Z

.field mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowVisible:Z

.field mWindowWasVisible:Z

.field moveDown:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 160
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    .line 161
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    .line 162
    new-array v0, v2, [I

    sput-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    .line 163
    new-array v0, v2, [I

    sput-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    .line 168
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 169
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    .line 83
    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 84
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    .line 94
    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 102
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniModeEnable:Z

    .line 115
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    .line 147
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 156
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    .line 182
    return-void
.end method

.method static synthetic access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    return-void
.end method

.method static synthetic access$200(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V

    return-void
.end method

.method static synthetic access$300(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViewPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/alwaysontopservice/AlwaysOnTopService;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;
    .param p1, "x1"    # [I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    return-void
.end method

.method private checkFrameSize()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1656
    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1657
    .local v3, "width":I
    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1659
    .local v2, "height":I
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    if-ne v6, v3, :cond_0

    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    if-eq v6, v2, :cond_1

    .line 1660
    :cond_0
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    sub-int v6, v3, v6

    div-int/lit8 v1, v6, 0x2

    .line 1661
    .local v1, "changeWidth":I
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x2

    .line 1667
    .local v0, "changeHeight":I
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v7, v6, v4

    sub-int/2addr v7, v1

    aput v7, v6, v4

    .line 1668
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v7, v6, v5

    sub-int/2addr v7, v0

    aput v7, v6, v5

    .line 1670
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v7, v6, v4

    sub-int/2addr v7, v1

    aput v7, v6, v4

    .line 1671
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v4, v5

    sub-int/2addr v6, v0

    aput v6, v4, v5

    .line 1674
    sput v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 1675
    sput v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    move v4, v5

    .line 1680
    .end local v0    # "changeHeight":I
    .end local v1    # "changeWidth":I
    :cond_1
    return v4
.end method

.method private static getDefaultDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getLocationOnScreen([I)V
    .locals 9
    .param p1, "location"    # [I

    .prologue
    .line 442
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v0, "diaplayRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v2, "frameRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/alwaysontopservice/AlwaysOnTopService;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 445
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 447
    iget-object v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 448
    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    .line 449
    .local v4, "width":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v7, v8

    .line 450
    .local v3, "height":I
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 451
    .local v5, "x":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    .line 454
    .local v6, "y":I
    const/4 v7, 0x0

    aput v5, p1, v7

    .line 455
    const/4 v7, 0x1

    aput v6, p1, v7

    .line 456
    return-void
.end method

.method private handleBack(Z)Z
    .locals 2
    .param p1, "doIt"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1287
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-eqz v1, :cond_1

    .line 1290
    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->requestHideSelf()V

    .line 1298
    :cond_0
    :goto_0
    return v0

    .line 1293
    :cond_1
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v1, :cond_2

    .line 1294
    if-eqz p1, :cond_0

    .line 1295
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->hideWindow()V

    goto :goto_0

    .line 1298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViewPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 467
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    if-eqz v4, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 474
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 475
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 481
    sget-boolean v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    if-nez v4, :cond_2

    .line 482
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    .line 483
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 494
    :goto_1
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v6

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v6

    sub-int v1, v4, v5

    .line 495
    .local v1, "moveX":I
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v7

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v7

    sub-int v2, v4, v5

    .line 496
    .local v2, "moveY":I
    invoke-virtual {p0, v1, v2, v6}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 497
    iput-boolean v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    .line 511
    :goto_2
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    if-eq v4, v7, :cond_0

    .line 512
    invoke-virtual {p0, v6}, Landroid/alwaysontopservice/AlwaysOnTopService;->onMoveFrame(Z)V

    goto :goto_0

    .line 485
    .end local v1    # "moveX":I
    .end local v2    # "moveY":I
    :cond_2
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sput v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 486
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sput v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    .line 487
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    invoke-direct {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 488
    sput-boolean v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    goto :goto_1

    .line 501
    .restart local v1    # "moveX":I
    .restart local v2    # "moveY":I
    :cond_3
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v5, Landroid/alwaysontopservice/AlwaysOnTopService$3;

    invoke-direct {v5, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$3;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private initialPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1685
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 1686
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 1687
    invoke-virtual {p0, v2, v2, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 1689
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 1690
    return-void
.end method

.method private moveFrame()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v3

    const/16 v1, 0x2b5

    if-le v0, v1, :cond_1

    .line 272
    iput v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 277
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v0, v0, v3

    rsub-int v0, v0, 0x2b5

    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 278
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    goto :goto_0
.end method

.method private resetPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 428
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v4

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 429
    .local v0, "moveX":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v5

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 431
    .local v1, "moveY":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    invoke-direct {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 433
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v4

    add-int/2addr v3, v0

    aput v3, v2, v4

    .line 434
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    add-int/2addr v3, v1

    aput v3, v2, v5

    .line 435
    return-void
.end method


# virtual methods
.method public OnMediaState(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 1609
    return-void
.end method

.method public OnRestoreState()V
    .locals 0

    .prologue
    .line 1641
    return-void
.end method

.method public OnSaveState()V
    .locals 0

    .prologue
    .line 1637
    return-void
.end method

.method public OnSkipWindow()V
    .locals 2

    .prologue
    .line 1644
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1645
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1646
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 1647
    :cond_0
    return-void
.end method

.method public OnTitleMoveStart()V
    .locals 0

    .prologue
    .line 1601
    return-void
.end method

.method public OnTitleMoveStop()V
    .locals 0

    .prologue
    .line 1605
    return-void
.end method

.method public closeRecentApps()V
    .locals 4

    .prologue
    .line 1735
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1736
    .local v1, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v1, :cond_0

    .line 1737
    const-string v2, "AlwaysOnTopService"

    const-string v3, "Unable to connect to StatusBarService. StatusBar is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :goto_0
    return-void

    .line 1740
    :cond_0
    const-string v2, "AlwaysOnTopService"

    const-string v3, "aotCloseRecentApps is calling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->aotCloseRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1742
    .end local v1    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnTopService"

    const-string v3, "RemoteException aotCloseRecentApps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1745
    const/4 v1, 0x0

    .restart local v1    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    goto :goto_0
.end method

.method createListener()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$5;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$5;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    .line 702
    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 703
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$6;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$6;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    .line 713
    :cond_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1585
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1343
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1344
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1346
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 1347
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 1348
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 1357
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    :goto_0
    return v0

    .line 1354
    :cond_1
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 1357
    .local v0, "handled":Z
    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1590
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public getActionBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getAlwaysOnTopBG()Landroid/view/View;
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    .line 1228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public getCloseBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDialogWindowType()I
    .locals 1

    .prologue
    .line 1624
    const/16 v0, 0x7e1

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutInflater(I)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I

    .prologue
    .line 894
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMiniTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMiniTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMoveListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V

    .line 1651
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1482
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1506
    :goto_0
    return v2

    .line 1484
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    .line 1493
    invoke-virtual {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setPositionFixing(Z)V

    .line 1494
    const v1, 0x10a0018

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1495
    .local v0, "exit":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1496
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v1, :cond_1

    .line 1497
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1500
    :cond_1
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1482
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onFinishAlwaysOnView()V

    .line 988
    :cond_0
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    .line 990
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->hide()V

    .line 992
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 993
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onWindowHidden()V

    .line 994
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 996
    :cond_1
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    if-eqz v0, :cond_2

    .line 997
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    .line 999
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 1008
    :cond_2
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    .line 1013
    :cond_3
    return-void
.end method

.method initViews()V
    .locals 8

    .prologue
    const v7, 0x1020288

    const v6, 0x1020287

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 718
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    .line 719
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 720
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 721
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnForced:Z

    .line 723
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    .line 724
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    .line 725
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleView:Landroid/widget/LinearLayout;

    .line 726
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    .line 727
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    .line 728
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

    .line 729
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    .line 730
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    .line 731
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 732
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    .line 733
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    .line 734
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    .line 739
    :try_start_0
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v3, :cond_0

    .line 740
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowManager:Landroid/view/IWindowManager;

    .line 742
    :cond_0
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getHallICState()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_1
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V

    .line 750
    sget-object v1, Landroid/R$styleable;->AlwaysOnTop:[I

    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 752
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109002b

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    .line 755
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setContentView(Landroid/view/View;)V

    .line 757
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10301e6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 760
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    const v2, 0x102028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    .line 763
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

    .line 766
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    .line 768
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 770
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    const v2, 0x102028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    .line 772
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    new-instance v2, Landroid/alwaysontopservice/AlwaysOnTopService$7;

    invoke-direct {v2, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$7;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    const v2, 0x102028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 784
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 742
    goto/16 :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlwaysOnTopService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHallICState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109002a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    .line 795
    :goto_3
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setContentView(Landroid/view/View;)V

    .line 801
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x10301e7

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 804
    iput-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    .line 805
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    .line 807
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x102028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    .line 810
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x1020285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    .line 815
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x1020289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    .line 818
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleView:Landroid/widget/LinearLayout;

    .line 821
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    .line 823
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 825
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x102028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 827
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x1020286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    .line 831
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    new-instance v2, Landroid/alwaysontopservice/AlwaysOnTopService$8;

    invoke-direct {v2, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$8;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v2, 0x102028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    .line 846
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    new-instance v2, Landroid/alwaysontopservice/AlwaysOnTopService$9;

    invoke-direct {v2, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$9;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 791
    :cond_3
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090028

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    goto/16 :goto_3
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    .line 620
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onInitializeInterface()V

    .line 622
    :cond_0
    return-void
.end method

.method public isAlwaysOnViewShown()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraRunning()I
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isCameraRunning()I

    move-result v0

    .line 1718
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    return v0
.end method

.method public isMediaApp()Z
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaRunning(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {v0, p1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isMediaRunning(I)Z

    move-result v0

    .line 1620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniMode()Z
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    return v0
.end method

.method public isSkipBackKeyEvent()Z
    .locals 1

    .prologue
    .line 1632
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1581
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1577
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1518
    const v4, 0x10a0017

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1519
    .local v0, "enter":Landroid/view/animation/Animation;
    iget-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1520
    .local v3, "saveVisibleWindow":Z
    iput-boolean v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1525
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v7

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v7

    sub-int v1, v4, v5

    .line 1526
    .local v1, "moveX":I
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v6

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v6

    sub-int v2, v4, v5

    .line 1527
    .local v2, "moveY":I
    invoke-virtual {p0, v1, v2, v7}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 1529
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1531
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 1532
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->onChangeModeAlwaysOnView(Z)V

    .line 1533
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v4, :cond_0

    .line 1534
    invoke-virtual {p0, v6}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindow(Z)V

    .line 1535
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1547
    :goto_0
    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$12;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$12;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1564
    return-void

    .line 1537
    :cond_0
    iput-boolean v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 1538
    iput-boolean v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 1539
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 1540
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v4, :cond_1

    .line 1541
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 1542
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 1545
    :cond_1
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1568
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1512
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1433
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$10;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$10;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1444
    :goto_0
    sget-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$11;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$11;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1454
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    .line 1456
    :cond_1
    return-void

    .line 1441
    :cond_2
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViewPosition()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 331
    const-string v0, "aot_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    .line 337
    :cond_0
    new-instance v0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    invoke-direct {v0, p0, v1}, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;Landroid/view/alwaysontop/AlwaysOnTopInterface;)V

    return-object v0
.end method

.method public onChangeModeAlwaysOnView(Z)V
    .locals 0
    .param p1, "isMiniMode"    # Z

    .prologue
    .line 1148
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 346
    .local v2, "visible":Z
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 347
    .local v0, "showFlags":I
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 353
    .local v1, "showingAlwaysOn":Z
    iget v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    iget v4, p1, Landroid/content/res/Configuration;->typeface:I

    if-eq v3, v4, :cond_0

    .line 357
    iget v3, p1, Landroid/content/res/Configuration;->typeface:I

    iput v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    .line 358
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$1;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$1;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    :cond_0
    if-eqz v2, :cond_1

    .line 368
    iget v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1

    .line 371
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 376
    if-eqz v1, :cond_1

    .line 377
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$2;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$2;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 425
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1418
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 522
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 524
    .local v0, "appTheme":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTheme(I)V

    .line 526
    :cond_0
    iget v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v6, 0x10301e5

    const v7, 0x10301e8

    const v8, 0x10301e9

    invoke-static {v4, v5, v6, v7, v8}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v4

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 533
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowManager:Landroid/view/IWindowManager;

    .line 536
    iget v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    invoke-super {p0, v4}, Landroid/app/Service;->setTheme(I)V

    .line 537
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 539
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mHandler:Landroid/os/Handler;

    .line 541
    const-string v4, "alwaysontop"

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/alwaysontop/AlwaysOnTopManager;

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 542
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->isMediaApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/alwaysontop/AlwaysOnTopManager;->setMediaApp(Z)V

    .line 544
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    .line 545
    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v4, p0, v5, v6}, Landroid/alwaysontopservice/AlwaysOnTopWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    .line 546
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 548
    invoke-static {}, Landroid/alwaysontopservice/AlwaysOnTopService;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 549
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 550
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 551
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 552
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_1

    .line 553
    const/4 v4, 0x2

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 558
    :cond_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 559
    .local v2, "mConfiguration":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/content/res/Configuration;->typeface:I

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    .line 561
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 562
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 564
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    .line 565
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v5, Landroid/alwaysontopservice/AlwaysOnTopService$4;

    invoke-direct {v5, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$4;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public onCreateAlwaysOnView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1387
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateTitleBarExView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 862
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 863
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1462
    return-void
.end method

.method public onFinishAlwaysOnView()V
    .locals 0

    .prologue
    .line 1160
    return-void
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1306
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1307
    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1309
    const/4 v0, 0x1

    .line 1313
    :cond_0
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1327
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->handleBack(Z)Z

    move-result v0

    .line 1332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method public onMoveFrame(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    if-eqz p1, :cond_3

    .line 287
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    if-eqz v0, :cond_0

    .line 288
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 289
    invoke-virtual {p0, v2, v2, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 290
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 292
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v1, v4, v1

    sub-int v1, v3, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 303
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 288
    goto :goto_0

    :cond_2
    move v0, v2

    .line 290
    goto :goto_1

    .line 296
    :cond_3
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    if-ne v0, v1, :cond_4

    .line 297
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V

    goto :goto_2

    .line 299
    :cond_4
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    goto :goto_2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1468
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x0

    return v0
.end method

.method public onStartAlwaysOnView(Z)V
    .locals 0
    .param p1, "restarting"    # Z

    .prologue
    .line 1143
    return-void
.end method

.method public onVisibleFrame(Z)V
    .locals 1
    .param p1, "flipFlag"    # Z

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->show()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->hide()V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1412
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1424
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1572
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestHideSelf()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->stopAlwaysOnTop(Ljava/lang/String;)Z

    .line 1254
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->closeRecentApps()V

    .line 1256
    return-void
.end method

.method public setActionBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1259
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtnListener:Landroid/view/View$OnClickListener;

    .line 1260
    return-void
.end method

.method public setActionBtnVisibility(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1265
    const/4 v0, 0x1

    .line 1267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlwaysOnView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1069
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1071
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 1072
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1085
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    .line 1087
    return-void

    .line 1078
    :cond_1
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v2, :cond_0

    .line 1079
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1080
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1081
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setFrameMoveAniDisable(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1724
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1725
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setFrameMoveAniDisable(Z)Z

    .line 1729
    :goto_0
    return-void

    .line 1728
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "setFrameMoveAniDisable() error root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 1
    .param p1, "isFull"    # Z

    .prologue
    .line 1693
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    .line 1694
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1695
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 1697
    :cond_0
    return-void
.end method

.method public setMiniMode(Z)V
    .locals 1
    .param p1, "miniMode"    # Z

    .prologue
    .line 1241
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eq v0, p1, :cond_0

    .line 1242
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    .line 1243
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 1245
    :cond_0
    return-void
.end method

.method public setMiniModeBtnVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1284
    :cond_0
    return-void
.end method

.method public setMiniTitleText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1217
    :cond_0
    return-void
.end method

.method public setMiniTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    :cond_0
    return-void
.end method

.method public setMoveRect(IIZ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isMove"    # Z

    .prologue
    const/4 v1, 0x0

    .line 627
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    if-nez v2, :cond_0

    .line 628
    const-string v2, "AlwaysOnTopService"

    const-string v3, "mWindow is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return v1

    .line 632
    :cond_0
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 634
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 635
    iget-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mUseIME:Z

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl;->moveAOTWindow(IIZZZ)Z

    .line 636
    const/4 v1, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const-string v2, "AlwaysOnTopService"

    const-string v3, "setMoveRect() error root view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMoveVisibleWindow(Z)V
    .locals 0
    .param p1, "visibleWindow"    # Z

    .prologue
    .line 1273
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1274
    return-void
.end method

.method public setPositionFixing(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1706
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1707
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setPositionFixing(Z)Z

    .line 1711
    :goto_0
    return-void

    .line 1710
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "setPositionFixing() error root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSkipBackKeyEvent(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 1628
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    .line 1629
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 460
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    iput p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 464
    return-void
.end method

.method public setTitleBarExView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 1165
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1167
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleBarViewEx:Landroid/view/View;

    .line 1173
    :cond_0
    return-void
.end method

.method public setTitleBarExViewVisibility(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1178
    const/4 v0, 0x1

    .line 1180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1197
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    :cond_0
    return-void
.end method

.method public setUseIME(Z)V
    .locals 0
    .param p1, "useIME"    # Z

    .prologue
    .line 1596
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mUseIME:Z

    .line 1597
    return-void
.end method

.method public showWindow(Z)V
    .locals 3
    .param p1, "showAlwaysOn"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 909
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "AlwaysOnTopService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_0
    return-void

    .line 915
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    .line 917
    invoke-virtual {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 920
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    goto :goto_0

    .line 919
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 920
    iput-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    throw v0
.end method

.method showWindowInner(Z)V
    .locals 5
    .param p1, "showAlwaysOn"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "doshowAlwaysOn":Z
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 927
    .local v1, "wasVisible":Z
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 928
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-nez v2, :cond_6

    .line 930
    if-eqz p1, :cond_0

    .line 931
    const/4 v0, 0x1

    .line 932
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 941
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 943
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v2, :cond_1

    .line 944
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 947
    :cond_1
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 949
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v2, :cond_7

    .line 950
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->updateAlwaysOnViewShown()V

    .line 955
    :goto_1
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    if-nez v2, :cond_3

    .line 956
    :cond_2
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    .line 957
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 958
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 961
    :cond_3
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-eqz v2, :cond_4

    .line 962
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    if-nez v2, :cond_4

    .line 965
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    .line 966
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->onStartAlwaysOnView(Z)V

    .line 974
    :cond_4
    if-nez v1, :cond_5

    .line 977
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onWindowShown()V

    .line 978
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->show()V

    .line 980
    :cond_5
    return-void

    .line 936
    :cond_6
    const/4 p1, 0x1

    goto :goto_0

    .line 952
    :cond_7
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    invoke-virtual {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->onChangeModeAlwaysOnView(Z)V

    goto :goto_1
.end method

.method public updateAlwaysOnView()V
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateAlwaysOnView()Landroid/view/View;

    move-result-object v0

    .line 1050
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setAlwaysOnView(Landroid/view/View;)V

    .line 1054
    :cond_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateTitleBarExView()Landroid/view/View;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTitleBarExView(Landroid/view/View;)V

    .line 1058
    :cond_1
    return-void
.end method

.method public updateAlwaysOnViewShown()V
    .locals 4

    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 1027
    .local v0, "isShown":Z
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    if-eq v2, v0, :cond_1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v2, :cond_1

    .line 1028
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    .line 1029
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1030
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1031
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 1032
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateAlwaysOnView()Landroid/view/View;

    move-result-object v1

    .line 1033
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->setAlwaysOnView(Landroid/view/View;)V

    .line 1037
    :cond_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateTitleBarExView()Landroid/view/View;

    move-result-object v1

    .line 1038
    if-eqz v1, :cond_1

    .line 1039
    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTitleBarExView(Landroid/view/View;)V

    .line 1043
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 1029
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method
