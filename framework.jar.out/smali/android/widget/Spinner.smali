.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mGravity:I

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 148
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 171
    sget-object v4, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    if-ne p4, v4, :cond_0

    .line 175
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 178
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 223
    :goto_0
    const/16 v4, 0x11

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Spinner;->mGravity:I

    .line 225
    iget-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 227
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    iget-object v4, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    iget-object v5, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    invoke-interface {v4, v5}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iput-object v7, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    .line 238
    :cond_1
    return-void

    .line 180
    :pswitch_0
    new-instance v4, Landroid/widget/Spinner$DialogPopup;

    invoke-direct {v4, p0, v7}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V

    iput-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v2, Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    .local v2, "popup":Landroid/widget/Spinner$DropdownPopup;
    const/4 v4, 0x4

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 190
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 194
    .local v3, "verticalOffset":I
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v2, v3}, Landroid/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    .line 198
    :cond_2
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 200
    .local v1, "horizontalOffset":I
    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {v2, v1}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 204
    :cond_3
    iput-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 205
    new-instance v4, Landroid/widget/Spinner$1;

    invoke-direct {v4, p0, p0, v2}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    iput-object v4, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Spinner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/Spinner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/Spinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/widget/Spinner;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .prologue
    .line 604
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 605
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 620
    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 615
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 618
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 620
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 635
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 636
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 639
    :cond_0
    if-eqz p2, :cond_1

    .line 640
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 643
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 644
    iget-boolean v8, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_2

    .line 645
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 649
    :cond_2
    iget v8, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 651
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 655
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 661
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 664
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 666
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 667
    .local v7, "width":I
    const/4 v2, 0x0

    .line 668
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 670
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 671
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 472
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 433
    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 441
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 443
    .end local v1    # "childBaseline":I
    :cond_1
    return v2

    .line 434
    :cond_2
    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 435
    invoke-direct {p0, v4, v4}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 436
    iget-object v3, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 10
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 537
    iget-object v7, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 538
    .local v1, "childrenLeft":I
    iget v7, p0, Landroid/widget/Spinner;->mRight:I

    iget v8, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 540
    .local v2, "childrenWidth":I
    iget-boolean v7, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v7, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 545
    :cond_0
    iget v7, p0, Landroid/widget/Spinner;->mItemCount:I

    if-nez v7, :cond_1

    .line 546
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 589
    :goto_0
    return-void

    .line 550
    :cond_1
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v7, :cond_2

    .line 551
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 554
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 557
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 560
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v7, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 562
    iget-object v7, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v7, :cond_3

    .line 563
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v4

    .line 564
    .local v4, "sel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 565
    .local v6, "width":I
    move v5, v1

    .line 566
    .local v5, "selectedOffset":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getLayoutDirection()I

    move-result v3

    .line 567
    .local v3, "layoutDirection":I
    iget v7, p0, Landroid/widget/Spinner;->mGravity:I

    invoke-static {v7, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 568
    .local v0, "absoluteGravity":I
    and-int/lit8 v7, v0, 0x7

    sparse-switch v7, :sswitch_data_0

    .line 576
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 580
    .end local v0    # "absoluteGravity":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "sel":Landroid/view/View;
    .end local v5    # "selectedOffset":I
    .end local v6    # "width":I
    :cond_3
    iget-object v7, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 582
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 584
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 586
    iput-boolean v9, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 587
    iput-boolean v9, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 588
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 570
    .restart local v0    # "absoluteGravity":I
    .restart local v3    # "layoutDirection":I
    .restart local v4    # "sel":Landroid/view/View;
    .restart local v5    # "selectedOffset":I
    .restart local v6    # "width":I
    :sswitch_0
    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    div-int/lit8 v8, v6, 0x2

    sub-int v5, v7, v8

    .line 571
    goto :goto_1

    .line 573
    :sswitch_1
    add-int v7, v1, v2

    sub-int v5, v7, v6

    goto :goto_1

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 733
    if-nez p1, :cond_1

    .line 734
    const/4 v8, 0x0

    .line 773
    :cond_0
    :goto_0
    return v8

    .line 737
    :cond_1
    const/4 v8, 0x0

    .line 738
    .local v8, "width":I
    const/4 v5, 0x0

    .line 739
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 740
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 742
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 747
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 748
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 749
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 750
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 751
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 752
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 753
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 754
    move v4, v6

    .line 755
    const/4 v5, 0x0

    .line 757
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 758
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 759
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 764
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 768
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 769
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 770
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 689
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 691
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 465
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 451
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 454
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 696
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 697
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 701
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 702
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 707
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 525
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 526
    iput-boolean v1, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 527
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 505
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 506
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 508
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 513
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 785
    move-object v1, p1

    check-cast v1, Landroid/widget/Spinner$SavedState;

    .line 787
    .local v1, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v1}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 789
    iget-boolean v3, v1, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v3, :cond_0

    .line 790
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 791
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 792
    new-instance v0, Landroid/widget/Spinner$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    .line 804
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 807
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 779
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 780
    return-object v0

    .line 779
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 500
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 675
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 677
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 680
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 685
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 64
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 419
    iget-object v0, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 421
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v1, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v1, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v0, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v0, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 314
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 290
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 342
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 343
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 367
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    .line 369
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 384
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 385
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 386
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 388
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 389
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 391
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 492
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    check-cast v0, Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 714
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 715
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 723
    return-void
.end method
