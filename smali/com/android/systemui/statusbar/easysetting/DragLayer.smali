.class public Lcom/android/systemui/statusbar/easysetting/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;


# instance fields
.field private mChildLayout:Landroid/view/ViewGroup;

.field private mDirty:Z

.field mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDirty:Z

    .line 61
    return-void
.end method


# virtual methods
.method public changeModeNormal(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 173
    .local v1, nReturnChild:I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 175
    check-cast v3, Landroid/view/ViewGroup;

    .line 176
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 179
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeNormal(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    if-eqz v4, :cond_1

    .line 184
    check-cast p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .end local p1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 186
    const/4 v1, 0x1

    .line 188
    :cond_1
    return v1
.end method

.method public changeModeToEdit(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 149
    .local v1, nReturnChild:I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDirty:Z

    .line 150
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 152
    check-cast v3, Landroid/view/ViewGroup;

    .line 153
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    if-eqz v4, :cond_1

    .line 161
    check-cast p1, Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .end local p1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 163
    const/4 v1, 0x1

    .line 165
    :cond_1
    return v1
.end method

.method public childTraverse(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 126
    .local v1, nReturnChild:I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 128
    check-cast v3, Landroid/view/ViewGroup;

    .line 129
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 132
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->childTraverse(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    check-cast p1, Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .end local p1
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->addDropTarget(Lcom/android/systemui/statusbar/easysetting/DropTarget;)V

    .line 140
    const/4 v1, 0x1

    .line 142
    :cond_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->removeAllDropTargets()V

    .line 222
    return-void
.end method

.method public onDragEnter(Lcom/android/systemui/statusbar/easysetting/DragSource;Lcom/android/systemui/statusbar/easysetting/DropTarget;)V
    .locals 1
    .parameter "src"
    .parameter "target"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->rearrangeEasySettingItem(Landroid/view/View;Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public onDragStart(Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, numDropTarget:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->childTraverse(Landroid/view/View;)I

    .line 211
    .end local v0           #numDropTarget:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChildLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    .line 117
    return-void
.end method

.method public setDragController(Lcom/android/systemui/statusbar/easysetting/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragLayer;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    .line 65
    return-void
.end method
