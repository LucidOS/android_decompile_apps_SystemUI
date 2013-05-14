.class Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;
.super Ljava/lang/Object;
.source "MotionRecognitionEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->setEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;->val$enabling:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "MotionRecognitionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionOnOff enabling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;->val$enabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->access$000(Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_recognization_enable"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;->val$enabling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
