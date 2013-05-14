.class Lcom/android/systemui/statusbar/easysetting/EasySetting$6;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;->setMotionOnOff(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$6;->val$enabling:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 933
    const-string v0, "EasySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionOnOff enabling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$6;->val$enabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method
