.class public Lcom/pantech/server/aot/drag/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static final DRAG_SCALE:I = 0x14


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlurPaint:Landroid/graphics/Paint;

.field private mDragLayoutParams:Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

.field private mHolographicPaint:Landroid/graphics/Paint;

.field mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

.field private mParentPosX:I

.field private mParentPosY:I

.field private mParentView:Landroid/view/View;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mTranslateX:F

.field private mTranslateY:F

.field private mWMLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private p2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    .line 79
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/pantech/server/aot/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v0, "scale":Landroid/graphics/Matrix;
    int-to-float v1, p7

    .line 83
    .local v1, "scaleFactor":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 86
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    iput p3, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    .line 89
    iput p4, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    .line 92
    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/pantech/server/aot/drag/DragView;->mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    const-string v2, "AOT_Dock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",move:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private initializePaint()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 97
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBlurPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 98
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v4, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 100
    .local v2, "sThinOuterBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBlurPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 104
    .end local v2    # "sThinOuterBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :cond_0
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mHolographicPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    .line 106
    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    .line 108
    .local v1, "sCoarseClipTable":Landroid/graphics/MaskFilter;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mHolographicPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 110
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v5, 0x57

    const/16 v6, 0xaf

    const/16 v7, 0xb0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .end local v1    # "sCoarseClipTable":Landroid/graphics/MaskFilter;
    :cond_1
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->p2:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 115
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->p2:Landroid/graphics/Paint;

    .line 116
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->p2:Landroid/graphics/Paint;

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    :cond_2
    iget v4, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    const v5, 0x3f7fbe77    # 0.999f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 120
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 121
    .local v3, "width":F
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 122
    .local v0, "height":F
    iget v4, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    mul-float/2addr v4, v3

    sub-float v4, v3, v4

    div-float/2addr v4, v8

    iput v4, p0, Lcom/pantech/server/aot/drag/DragView;->mTranslateX:F

    .line 123
    iget v4, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    mul-float/2addr v4, v0

    sub-float v4, v0, v4

    div-float/2addr v4, v8

    iput v4, p0, Lcom/pantech/server/aot/drag/DragView;->mTranslateY:F

    .line 126
    .end local v0    # "height":F
    .end local v3    # "width":F
    :cond_3
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/pantech/server/aot/drag/DragView;->mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    return-void
.end method


# virtual methods
.method move(II)V
    .locals 4
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mDragLayoutParams:Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

    .line 235
    .local v0, "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    .line 236
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    .line 237
    iget v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    if-gez v1, :cond_0

    .line 238
    iput v3, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 248
    .end local v0    # "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mWMLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 242
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 243
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 244
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_2

    .line 245
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 152
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 136
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 141
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 144
    .local v0, "mTempOffset":[I
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mMoveImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/server/aot/drag/DragView;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/pantech/server/aot/drag/DragView;->invalidate()V

    .line 158
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    .line 219
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 220
    .local v0, "l":[I
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 221
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    .line 222
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    .line 223
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 161
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 162
    iput v1, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/drag/DragView;->invalidate()V

    .line 167
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/pantech/server/aot/drag/DragView;->mAnimationScale:F

    goto :goto_0
.end method

.method public show(II)V
    .locals 4
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v2, -0x2

    .line 200
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    new-instance v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;-><init>(II)V

    .line 205
    .local v0, "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->width:I

    .line 206
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->height:I

    .line 207
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    .line 208
    iget v1, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    .line 209
    const-string v1, "AOT_Dock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->customPosition:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/pantech/server/aot/drag/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mDragLayoutParams:Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

    .line 214
    .end local v0    # "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    :cond_0
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    const/4 v1, -0x2

    .line 180
    const/4 v7, -0x3

    .line 182
    .local v7, "pixelFormat":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationX:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosX:I

    sub-int v3, v2, v3

    iget v2, p0, Lcom/pantech/server/aot/drag/DragView;->mRegistrationY:I

    sub-int v2, p3, v2

    iget v4, p0, Lcom/pantech/server/aot/drag/DragView;->mParentPosY:I

    sub-int v4, v2, v4

    const/16 v5, 0x3eb

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 192
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 194
    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragView;->mWMLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 196
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void
.end method
