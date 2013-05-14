.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mDisplayBatteryLevel:Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDisplayBatteryLevel:Z

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mDisplayBatteryLevel:Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryLevelDB()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    .line 65
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    return p1
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getBatteryLevelDB()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, state:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mDisplayBatteryLevel:Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mDisplayBatteryLevel:Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_level_in_number"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mDisplayBatteryLevel:Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_level_in_number"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 142
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "StatusBar.BatteryController"

    const-string v3, "Not Found Settings on getBatteryLevelDB"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 79
    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 80
    .local v6, level:I
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    .line 81
    .local v7, plugged:Z
    :goto_0
    const-string v10, "status"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v8, 0x1

    .line 82
    .local v8, status:Z
    :goto_1
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    const/16 v10, 0x64

    if-ge v6, v10, :cond_2

    const/4 v3, 0x1

    .line 87
    .local v3, charging:Z
    :goto_2
    if-eqz v3, :cond_3

    const v5, 0x7f0201a5

    .line 90
    .local v5, icon:I
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    .local v1, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v1, :cond_4

    .line 92
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 93
    .local v9, v:Landroid/widget/ImageView;
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 95
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f090063

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 80
    .end local v1           #N:I
    .end local v3           #charging:Z
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v7           #plugged:Z
    .end local v8           #status:Z
    .end local v9           #v:Landroid/widget/ImageView;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 81
    .restart local v7       #plugged:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 82
    .restart local v8       #status:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 87
    .restart local v3       #charging:Z
    :cond_3
    const v5, 0x7f02018b

    goto :goto_3

    .line 98
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v5       #icon:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryLevelDB()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    .line 99
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 100
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_6

    .line 101
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 102
    .local v9, v:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f09001a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    if-eqz v10, :cond_5

    .line 106
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 109
    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 114
    .end local v1           #N:I
    .end local v3           #charging:Z
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v6           #level:I
    .end local v7           #plugged:Z
    .end local v8           #status:Z
    .end local v9           #v:Landroid/widget/TextView;
    :cond_6
    return-void
.end method

.method public updateBatteryViews()V
    .locals 4

    .prologue
    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, v:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z

    if-eqz v3, :cond_0

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 129
    .end local v2           #v:Landroid/widget/TextView;
    :cond_1
    return-void
.end method
