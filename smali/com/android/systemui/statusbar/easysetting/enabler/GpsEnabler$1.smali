.class Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;
.super Ljava/lang/Object;
.source "GpsEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->setEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;->val$enabling:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;->val$enabling:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method
