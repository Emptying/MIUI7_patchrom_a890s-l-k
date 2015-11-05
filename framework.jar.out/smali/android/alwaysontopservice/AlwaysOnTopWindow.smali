.class public Landroid/alwaysontopservice/AlwaysOnTopWindow;
.super Landroid/app/Dialog;
.source "AlwaysOnTopWindow.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopService"


# instance fields
.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p3, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 42
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->initDockWindow()V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setSkipWindow(Z)Z

    .line 44
    return-void
.end method

.method private initDockWindow()V
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 91
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 92
    const-string v1, "AlwaysOnTop"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x40120

    const v3, 0x40122

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 110
    return-void
.end method

.method private setSkipWindow(Z)Z
    .locals 3
    .param p1, "fSkip"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 118
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 121
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "setSkipWindow() error root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 145
    :cond_0
    if-nez v0, :cond_1

    .line 146
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 147
    :cond_1
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 193
    :cond_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 154
    .local v0, "action":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 155
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setSkipWindow(Z)Z

    .line 160
    :goto_0
    const/4 v1, 0x0

    .line 161
    .local v1, "result":Z
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 164
    :cond_0
    if-nez v1, :cond_1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 167
    :cond_1
    return v1

    .line 157
    .end local v1    # "result":Z
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setSkipWindow(Z)Z

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 177
    :cond_0
    if-nez v0, :cond_1

    .line 178
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 180
    :cond_1
    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 50
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    :goto_0
    return v1

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setSkipWindow(Z)Z

    .line 136
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 300
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 304
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Dialog;->onContentChanged()V

    .line 270
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 273
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 212
    :cond_0
    if-nez v0, :cond_1

    .line 213
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 215
    :cond_1
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 199
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 310
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 314
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 251
    :cond_0
    if-nez v0, :cond_1

    .line 252
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 254
    :cond_1
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 238
    :cond_0
    if-nez v0, :cond_1

    .line 239
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 241
    :cond_1
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onPanelClosed(ILandroid/view/Menu;)V

    .line 320
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 324
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 225
    :cond_0
    if-nez v0, :cond_1

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 228
    :cond_1
    return v0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "result":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    .line 333
    :cond_0
    if-nez v0, :cond_1

    .line 334
    invoke-super {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    .line 335
    :cond_1
    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 261
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 280
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 281
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 282
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 283
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 289
    :goto_0
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 293
    :cond_0
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 294
    return-void

    .line 285
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 286
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 9
    .param p1, "gravity"    # I

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_0

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_3

    :cond_0
    move v2, v5

    .line 75
    .local v2, "oldIsVertical":Z
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_1

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_4

    :cond_1
    move v1, v5

    .line 79
    .local v1, "newIsVertical":Z
    :goto_1
    if-eq v2, v1, :cond_2

    .line 80
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    .local v3, "tmp":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 84
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    .end local v3    # "tmp":I
    :cond_2
    return-void

    .end local v1    # "newIsVertical":Z
    .end local v2    # "oldIsVertical":Z
    :cond_3
    move v2, v4

    .line 73
    goto :goto_0

    .restart local v2    # "oldIsVertical":Z
    :cond_4
    move v1, v4

    .line 77
    goto :goto_1
.end method

.method public setSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, -0x1

    .line 57
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 59
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 60
    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 66
    :goto_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    return-void

    .line 63
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 35
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopWindow;->mWindowCallback:Landroid/view/Window$Callback;

    .line 114
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setSkipWindow(Z)Z

    .line 130
    return-void
.end method
