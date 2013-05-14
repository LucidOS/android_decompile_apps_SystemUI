.class Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SilentEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v3, "SilentEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive :: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, ringerMode:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v3, v3, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mEasySettingState:[I

    aget v1, v3, v2

    .line 58
    .local v1, easysettingState:I
    const-string v3, "SilentEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive :: ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", easysetting state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->completeProgress()V

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v4, v4, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v5, v5, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mTitle:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->buttonSetState(ILjava/lang/CharSequence;)V

    .line 62
    .end local v1           #easysettingState:I
    .end local v2           #ringerMode:I
    :cond_0
    return-void
.end method
