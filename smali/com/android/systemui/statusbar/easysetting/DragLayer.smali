.class public Lcom/android/systemui/statusbar/easysetting/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mChildLayout:Landroid/view/ViewGroup;

.field private mDirty:Z

.field mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

.field mImageView:Landroid/widget/ImageView;

.field sourceParent:Landroid/view/ViewGroup;

.field targetParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const-string v0, "DragLayer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDirty:Z

    .line 74
    return-void
.end method


# virtual methods
.method public changeModeNormal(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 219
    .local v1, nReturnChild:I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 221
    check-cast v3, Landroid/view/ViewGroup;

    .line 222
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 225
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeNormal(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    if-eqz v4, :cond_1

    .line 230
    check-cast p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .end local p1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 232
    const/4 v1, 0x1

    .line 234
    :cond_1
    return v1
.end method

.method public changeModeToEdit(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 195
    .local v1, nReturnChild:I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDirty:Z

    .line 196
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 198
    check-cast v3, Landroid/view/ViewGroup;

    .line 199
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 202
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    if-eqz v4, :cond_1

    .line 207
    check-cast p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .end local p1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 209
    const/4 v1, 0x1

    .line 211
    :cond_1
    return v1
.end method

.method public childTraverse(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 172
    .local v1, nReturnChild:I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 174
    check-cast v3, Landroid/view/ViewGroup;

    .line 175
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 178
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->childTraverse(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    check-cast p1, Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .end local p1
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->addDropTarget(Lcom/android/systemui/statusbar/easysetting/DropTarget;)V

    .line 186
    const/4 v1, 0x1

    .line 188
    :cond_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->removeAllDropTargets()V

    .line 271
    return-void
.end method

.method public onDragEnter(Lcom/android/systemui/statusbar/easysetting/DragSource;Lcom/android/systemui/statusbar/easysetting/DropTarget;)V
    .locals 13
    .parameter "src"
    .parameter "target"

    .prologue
    const v12, 0x7f0c0099

    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 302
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    instance-of v7, v7, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    if-eqz v7, :cond_1

    .line 303
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    check-cast v7, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->rearrangeEasySettingItem(Landroid/view/View;Landroid/view/View;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v3, -0x1

    .line 307
    .local v3, mIndex_target:I
    const/4 v2, -0x1

    .line 309
    .local v2, mIndex_src:I
    if-eqz p1, :cond_2

    .line 310
    const-string v7, "DragLayer"

    const-string v8, "mparent = 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    .line 312
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    .line 316
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_2

    .line 317
    const-string v7, "DragLayer"

    const-string v8, "mparent = 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 322
    :cond_2
    if-eqz p2, :cond_3

    .line 323
    const-string v7, "DragLayer"

    const-string v8, "mparent = 3"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p2

    .line 324
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    .line 327
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_3

    .line 328
    const-string v7, "DragLayer"

    const-string v8, "mparent = 4"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 335
    :cond_3
    if-eq v2, v3, :cond_8

    .line 338
    move v5, v2

    .line 339
    .local v5, nStart:I
    move v4, v3

    .line 341
    .local v4, nEnd:I
    if-le v2, v3, :cond_c

    .line 342
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    if-ne v7, v8, :cond_5

    .line 343
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 344
    .local v6, srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 346
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 345
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 350
    .end local v0           #child:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 352
    const/4 v1, 0x1

    :goto_2
    sub-int v7, v5, v4

    if-gt v1, v7, :cond_8

    .line 353
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int v8, v4, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 361
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    if-ne v7, v12, :cond_9

    .line 362
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 363
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 364
    const/4 v0, 0x0

    .line 365
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 366
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 367
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 368
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 370
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 371
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 373
    :cond_6
    move v1, v5

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 374
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 376
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 463
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v4           #nEnd:I
    .end local v5           #nStart:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_8
    :goto_5
    if-ne v2, v3, :cond_0

    .line 466
    move v5, v2

    .line 467
    .restart local v5       #nStart:I
    move v4, v3

    .line 469
    .restart local v4       #nEnd:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    if-eq v7, v8, :cond_0

    .line 471
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    if-ne v7, v12, :cond_16

    .line 472
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 473
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    const/4 v0, 0x0

    .line 475
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 476
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 478
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 481
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-ge v1, v4, :cond_14

    .line 482
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 379
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 380
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 381
    const/4 v0, 0x0

    .line 382
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 383
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 387
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    if-ge v1, v5, :cond_a

    .line 388
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 390
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 391
    move v1, v4

    :goto_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_b

    .line 392
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 394
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_5

    .line 400
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_c
    if-ge v2, v3, :cond_8

    .line 401
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    if-ne v7, v8, :cond_e

    .line 404
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 405
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 406
    add-int/lit8 v1, v5, 0x1

    .restart local v1       #i:I
    :goto_9
    if-le v1, v4, :cond_d

    .line 407
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 410
    const-string v7, "DragLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSrc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", onTarget = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 412
    .end local v0           #child:Landroid/view/View;
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 414
    const/4 v1, 0x1

    :goto_a
    sub-int v7, v4, v5

    if-gt v1, v7, :cond_0

    .line 415
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    sub-int v8, v4, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 422
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    if-ne v7, v12, :cond_11

    .line 423
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 424
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 427
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 431
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b
    if-ge v1, v4, :cond_f

    .line 432
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 434
    :cond_f
    move v1, v5

    :goto_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_10

    .line 435
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 437
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_5

    .line 442
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 443
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 444
    const/4 v0, 0x0

    .line 445
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 446
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 450
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_d
    if-ge v1, v5, :cond_12

    .line 451
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 453
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 454
    move v1, v4

    :goto_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_13

    .line 455
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 457
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_5

    .line 484
    :cond_14
    move v1, v5

    :goto_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_15

    .line 485
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v10}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 487
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_0

    .line 491
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v6           #srcChild:Landroid/view/View;
    :cond_16
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 492
    .restart local v6       #srcChild:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 493
    const/4 v0, 0x0

    .line 494
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 495
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 497
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 499
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-ge v1, v4, :cond_17

    .line 500
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 502
    :cond_17
    add-int/lit8 v1, v5, 0x1

    :goto_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_18

    .line 503
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 505
    :cond_18
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->sourceParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v9}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->startEndAnimation(Landroid/view/View;IZ)V

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, numDropTarget:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->childTraverse(Landroid/view/View;)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->childTraverse(Landroid/view/View;)I

    .line 260
    .end local v0           #numDropTarget:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setChildLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    .line 163
    return-void
.end method

.method public setDragController(Lcom/android/systemui/statusbar/easysetting/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    .line 78
    return-void
.end method

.method public startEndAnimation(Landroid/view/View;IZ)V
    .locals 2
    .parameter "view"
    .parameter "pos"
    .parameter "mEndAniDirection"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 291
    if-eqz p3, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
