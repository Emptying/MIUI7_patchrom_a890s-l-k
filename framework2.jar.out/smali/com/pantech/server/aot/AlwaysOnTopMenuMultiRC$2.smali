.class Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMultiRC.java"

# interfaces
.implements Landroid/view/Window$RearCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    return-void
.end method

.method public onLongPressWithGyroscope(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    return-void
.end method

.method public onRearTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;
    invoke-static {v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)Lcom/pantech/server/aot/menu/AotContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 307
    .local v20, "pointerCount":I
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 308
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 309
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 310
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 311
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 312
    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 309
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 320
    .local v19, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;
    invoke-static {v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)Lcom/pantech/server/aot/menu/AotContainer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/pantech/server/aot/menu/AotContainer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;
    invoke-static {v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)Lcom/pantech/server/aot/menu/AotContainer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/pantech/server/aot/menu/AotContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    .end local v8    # "props":[Landroid/view/MotionEvent$PointerProperties;
    .end local v9    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v18    # "i":I
    .end local v19    # "newEvent":Landroid/view/MotionEvent;
    .end local v20    # "pointerCount":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method
