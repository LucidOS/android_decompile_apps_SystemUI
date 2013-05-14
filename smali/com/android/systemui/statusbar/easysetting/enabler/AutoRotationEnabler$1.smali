.class Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler$1;
.super Ljava/lang/Object;
.source "AutoRotationEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->setEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler$1;->val$enabling:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler$1;->val$enabling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
