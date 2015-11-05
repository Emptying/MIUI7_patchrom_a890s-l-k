.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 1057
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 1058
    invoke-direct {p0, p2, p3, v1, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1060
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1061
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 1062
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 1063
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1072
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$801(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1053
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1090
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1091
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 1092
    .local v3, "hOffset":I
    if-eqz v0, :cond_2

    .line 1093
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1094
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v3, v9, Landroid/graphics/Rect;->right:I

    .line 1100
    :goto_0
    const/4 v4, 0x0

    .line 1101
    .local v4, "isPantechTheme":Z
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1102
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1010482

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v5, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1104
    iget v9, v5, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_3

    .line 1105
    const/4 v4, 0x1

    .line 1111
    :goto_1
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v6

    .line 1112
    .local v6, "spinnerPaddingLeft":I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v7

    .line 1113
    .local v7, "spinnerPaddingRight":I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getWidth()I

    move-result v8

    .line 1115
    .local v8, "spinnerWidth":I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_6

    .line 1116
    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 1118
    .local v1, "contentWidth":I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/Spinner;->access$600(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v2, v9, v10

    .line 1120
    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    .line 1121
    move v1, v2

    .line 1124
    :cond_0
    if-eqz v4, :cond_5

    .line 1125
    if-le v1, v8, :cond_4

    .line 1126
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 1144
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_2
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1145
    sub-int v9, v8, v7

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 1150
    :goto_3
    if-eqz v4, :cond_9

    .line 1151
    invoke-virtual {p0, v12}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 1159
    :goto_4
    return-void

    .line 1094
    .end local v4    # "isPantechTheme":Z
    .end local v5    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "spinnerPaddingLeft":I
    .end local v7    # "spinnerPaddingRight":I
    .end local v8    # "spinnerWidth":I
    :cond_1
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    neg-int v3, v9

    goto/16 :goto_0

    .line 1096
    :cond_2
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    iput v12, v10, Landroid/graphics/Rect;->right:I

    iput v12, v9, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1107
    .restart local v4    # "isPantechTheme":Z
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1128
    .restart local v1    # "contentWidth":I
    .restart local v2    # "contentWidthLimit":I
    .restart local v6    # "spinnerPaddingLeft":I
    .restart local v7    # "spinnerPaddingRight":I
    .restart local v8    # "spinnerWidth":I
    :cond_4
    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setWidth(I)V

    goto :goto_2

    .line 1132
    :cond_5
    sub-int v9, v8, v6

    sub-int/2addr v9, v7

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 1138
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :cond_6
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 1139
    sub-int v9, v8, v6

    sub-int/2addr v9, v7

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 1141
    :cond_7
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 1147
    :cond_8
    add-int/2addr v3, v6

    goto :goto_3

    .line 1155
    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    goto :goto_4
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1076
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1077
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 1078
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1086
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1087
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1162
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v3

    .line 1164
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1166
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1167
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1168
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1169
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1170
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1171
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1172
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 1174
    if-eqz v3, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1184
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 1185
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1199
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1200
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
