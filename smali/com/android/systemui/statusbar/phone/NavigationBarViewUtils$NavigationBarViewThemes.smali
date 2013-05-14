.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;
.super Ljava/lang/Object;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationBarViewThemes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesStateHelper;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;
    }
.end annotation


# static fields
.field private static final CONTEN_URI:Landroid/net/Uri;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

.field private mTheme:I

.field private mThemesBGStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

.field private mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

.field private mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

.field private mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    const-string v0, "content://com.pantech.apps.SkySetting.SkySettingsOracle/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->CONTEN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 597
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mTheme:I

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    .line 598
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->init(Landroid/content/Context;)V

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mTheme:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mTheme:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/ContentQueryMap;)Landroid/content/ContentQueryMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContext:Landroid/content/Context;

    .line 604
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_name"

    aput-object v3, v2, v1

    const-string v1, "_value"

    aput-object v1, v2, v7

    .line 605
    .local v2, proj:[Ljava/lang/String;
    const-string v6, "_name= \'StatusBarType\'"

    .line 606
    .local v6, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 608
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_name= \'StatusBarType\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    if-nez v1, :cond_0

    .line 611
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    .line 612
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-nez v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 614
    new-instance v1, Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    const-string v5, "_name"

    invoke-direct {v1, v3, v5, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 616
    const-string v1, "NavigationBarViewUtils.Themes"

    const-string v3, "init :: Add observer"

    invoke-static {v1, v3, v7}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    if-nez v1, :cond_1

    .line 622
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    if-nez v1, :cond_2

    .line 626
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesBGStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

    if-nez v1, :cond_3

    .line 630
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesBGStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

    .line 632
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    if-eqz v0, :cond_0

    .line 656
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    if-eqz v0, :cond_1

    .line 660
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesBGStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

    if-eqz v0, :cond_2

    .line 664
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesBGStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesBGStateHelper;

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_5

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_3
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    .line 675
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;

    .line 677
    :cond_4
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    if-eqz v0, :cond_5

    .line 679
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 684
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContext:Landroid/content/Context;

    .line 686
    :cond_6
    return-void
.end method

.method public getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesKeyStateHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    return-object v0
.end method

.method getTheme()I
    .locals 6

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesDBHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;

    const-string v3, "StatusBarType"

    const-string v4, "0"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->getValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, theme:I
    return v0
.end method

.method public setOnThemesChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    .line 652
    return-void
.end method
