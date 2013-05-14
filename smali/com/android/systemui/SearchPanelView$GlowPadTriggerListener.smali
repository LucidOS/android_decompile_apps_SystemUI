.class Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadTriggerListener"
.end annotation


# instance fields
.field mWaitingForLaunch:Z

.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 104
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 113
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 107
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "target"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 117
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mIsBlockSearchPanel:Z
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->searchPanel_Show_By_HomeLongKey:Z

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    .line 132
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #calls: Lcom/android/systemui/SearchPanelView;->startAssistActivity()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #calls: Lcom/android/systemui/SearchPanelView;->vibrate()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x108031b
        :pswitch_0
    .end packed-switch
.end method
