.class Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;
.super Ljava/lang/Object;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemesDBHelper"
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->_context:Landroid/content/Context;

    .line 393
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->_context:Landroid/content/Context;

    .line 394
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16
    .parameter "keyName"
    .parameter "defValue"
    .parameter "defProp"

    .prologue
    .line 401
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_name"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "_value"

    aput-object v5, v3, v2

    .line 402
    .local v3, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_name= \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, where:Ljava/lang/String;
    const/4 v12, 0x0

    .line 405
    .local v12, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 406
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 408
    .local v7, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    move-result-object v2

    if-nez v2, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->_context:Landroid/content/Context;

    invoke-direct {v5, v6, v13}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V

    #setter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$202(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/content/ContentQueryMap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    new-instance v5, Landroid/content/ContentQueryMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/database/Cursor;

    move-result-object v6

    const-string v13, "_name"

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v5, v6, v13, v14, v15}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    #setter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/ContentQueryMap;)Landroid/content/ContentQueryMap;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Landroid/content/ContentQueryMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesDBHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mThemesObserver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 414
    const-string v2, "NavigationBarViewUtils.Themes"

    const-string v5, "getValue :: Add observer"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 421
    :cond_0
    :try_start_0
    const-string v2, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 423
    const-string v2, "_value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 450
    :goto_0
    if-eqz v7, :cond_1

    .line 451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_1
    const-string v2, "NavigationBarViewUtils.Themes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 456
    return-object v12

    .line 425
    :catch_0
    move-exception v9

    .line 427
    .local v9, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.sso."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 428
    .local v11, propValue:Ljava/lang/String;
    const-string v2, "NavigationBarViewUtils.Themes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue :: Get SystemProperties, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 429
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 430
    move-object/from16 p2, v11

    .line 433
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v8, cv:Landroid/content/ContentValues;
    :try_start_1
    const-string v2, "_name"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "_value"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "_isPro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    move-object/from16 v12, p2

    goto/16 :goto_0

    .line 443
    :catch_1
    move-exception v10

    .line 445
    .local v10, e1:Ljava/lang/Exception;
    const-string v12, "0"

    .line 446
    const-string v2, "NavigationBarViewUtils.Themes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue : exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
