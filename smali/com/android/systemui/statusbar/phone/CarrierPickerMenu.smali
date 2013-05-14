.class public Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;
.super Landroid/app/Dialog;
.source "CarrierPickerMenu.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static BAR_HEIGHT:I

.field static final CARRIER:Ljava/lang/String;


# instance fields
.field private kt_clickListener:Landroid/view/View$OnClickListener;

.field private lgu_clickListener:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "ro.carrier"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->CARRIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->kt_clickListener:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->lgu_clickListener:Landroid/view/View$OnClickListener;

    .line 47
    const-string v0, "CarrierPickerMenu"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mPm:Landroid/content/pm/PackageManager;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->initWindow()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private initWindow()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 57
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030009

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, rootView:Landroid/view/View;
    sget-object v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->CARRIER:Ljava/lang/String;

    const-string v10, "LGT-KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v8, :cond_0

    sget-object v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->CARRIER:Ljava/lang/String;

    const-string v10, "KT-KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v8, :cond_2

    .line 60
    :cond_0
    const/16 v9, 0x89

    sput v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->BAR_HEIGHT:I

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 65
    .local v7, window:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .local v2, density:F
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .local v1, barWidth:I
    sget v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->BAR_HEIGHT:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 68
    .local v0, barHeight:I
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    .local v6, width:I
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .local v3, height:I
    if-le v6, v3, :cond_1

    .line 72
    const/high16 v9, 0x42b4

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 75
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v9}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    if-le v6, v3, :cond_3

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->setLayout(Z)V

    .line 77
    return-void

    .line 62
    .end local v0           #barHeight:I
    .end local v1           #barWidth:I
    .end local v2           #density:F
    .end local v3           #height:I
    .end local v6           #width:I
    .end local v7           #window:Landroid/view/Window;
    :cond_2
    const/16 v9, 0x2d

    sput v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->BAR_HEIGHT:I

    goto :goto_0

    .line 76
    .restart local v0       #barHeight:I
    .restart local v1       #barWidth:I
    .restart local v2       #density:F
    .restart local v3       #height:I
    .restart local v6       #width:I
    .restart local v7       #window:Landroid/view/Window;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setLayout(Z)V
    .locals 14
    .parameter "isLand"

    .prologue
    .line 80
    const v11, 0x7f0c0043

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 81
    .local v3, linear_lgu:Landroid/widget/LinearLayout;
    const v11, 0x7f0c0046

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 83
    .local v2, linear_kt:Landroid/widget/LinearLayout;
    sget-object v11, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->CARRIER:Ljava/lang/String;

    const-string v12, "LGT-KOR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 84
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    const v11, 0x7f0c0044

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 88
    .local v10, recents_lgu_hdtv:Landroid/view/View;
    const v11, 0x7f0c0045

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 90
    .local v9, recents_lgu_box:Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->lgu_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->lgu_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .end local v9           #recents_lgu_box:Landroid/view/View;
    .end local v10           #recents_lgu_hdtv:Landroid/view/View;
    :cond_0
    :goto_0
    const v11, 0x7f0c003e

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 134
    .local v1, linear_googlenow:Landroid/widget/LinearLayout;
    new-instance v11, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    .line 92
    .end local v1           #linear_googlenow:Landroid/widget/LinearLayout;
    :cond_1
    sget-object v11, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->CARRIER:Ljava/lang/String;

    const-string v12, "KT-KOR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 93
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const v11, 0x7f0c0047

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 97
    .local v5, recents_kt_genie:Landroid/view/View;
    const v11, 0x7f0c0048

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 98
    .local v8, recents_kt_olleh_tv:Landroid/view/View;
    const v11, 0x7f0c0049

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v7, recents_kt_olleh_navi:Landroid/view/View;
    const v11, 0x7f0c004a

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 101
    .local v6, recents_kt_olleh_market:Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->kt_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->kt_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->kt_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->kt_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mPm:Landroid/content/pm/PackageManager;

    const-string v12, "com.ktmusic.geniemusic"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_1
    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mPm:Landroid/content/pm/PackageManager;

    const-string v12, "com.kt.otv"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 122
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #recents_kt_genie:Landroid/view/View;
    .end local v6           #recents_kt_olleh_market:Landroid/view/View;
    .end local v7           #recents_kt_olleh_navi:Landroid/view/View;
    .end local v8           #recents_kt_olleh_tv:Landroid/view/View;
    :cond_2
    const/4 v11, 0x1

    if-ne p1, v11, :cond_0

    .line 123
    const v11, 0x7f0c0042

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 124
    .local v4, linear_navi_carrier:Landroid/widget/LinearLayout;
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    const v11, 0x7f0c003e

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .restart local v1       #linear_googlenow:Landroid/widget/LinearLayout;
    const v11, 0x7f0200a0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 273
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 267
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->show()V

    goto :goto_0

    .line 270
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->hide()V

    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 252
    return-void
.end method

.method public hideCarrierPickerMenu()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 246
    return-void
.end method

.method public showCarrierPickerMenu()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    return-void
.end method
