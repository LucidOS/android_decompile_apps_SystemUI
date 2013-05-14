.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonOrientationEnabledReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;)V
    .locals 2
    .parameter "context"
    .parameter "host"
    .parameter "listener"

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mContext:Landroid/content/Context;

    .line 302
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 303
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.phone.navigationbar.DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.phone.navigationbar.ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.phone.ORIENTATION_LISTENER_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    if-eqz v0, :cond_0

    .line 333
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mContext:Landroid/content/Context;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 342
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 344
    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, extraEnabled:Ljava/lang/String;
    const-string v2, "NavigationBarViewUtils.Receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive :: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v2, "com.android.systemui.statusbar.phone.navigationbar.DISABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v3, "disabled"

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postButtonOrientationListenerEnabled(Ljava/lang/String;I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v2, "com.android.systemui.statusbar.phone.navigationbar.ENABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v3, "enabled"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postButtonOrientationListenerEnabled(Ljava/lang/String;I)V

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "com.android.systemui.statusbar.phone.ORIENTATION_LISTENER_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postButtonOrientationListenerEnabled(Ljava/lang/String;I)V

    goto :goto_0
.end method
