.class public Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;
.super Ljava/lang/Object;
.source "EasysettingPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method getPreference([Ljava/lang/String;ILjava/util/HashMap;)Z
    .locals 11
    .parameter "order"
    .parameter "max"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-nez p3, :cond_3

    .line 72
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPreference : order is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_1

    const-string v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , hashMap is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_2

    const-string v7, "null"

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 116
    :goto_2
    return v7

    .line 72
    :cond_1
    const-string v7, "ok"

    goto :goto_0

    :cond_2
    const-string v7, "ok"

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 76
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    .local v2, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 79
    .local v5, pref:Landroid/content/SharedPreferences;
    if-nez v5, :cond_4

    .line 81
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    const-string v9, "getPreference : pref is  null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 82
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 85
    .local v0, hashSize:I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_5

    .line 87
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    const-string v9, "getPreference : sharedpreference is  null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    .local v6, s:Ljava/lang/String;
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 99
    .local v4, orderNumber:I
    aget-object v7, p1, v4

    if-eqz v7, :cond_6

    move v7, v8

    .line 101
    goto :goto_2

    .line 91
    .end local v1           #i:I
    .end local v4           #orderNumber:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPreference : ok = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 104
    .restart local v1       #i:I
    .restart local v4       #orderNumber:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_6
    if-ltz v4, :cond_7

    if-ge v4, p2, :cond_7

    .line 106
    aput-object v6, p1, v4

    .line 107
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 111
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    const-string v9, "getPreference : illegal order number"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 112
    goto/16 :goto_2

    .line 116
    .end local v4           #orderNumber:I
    .end local v6           #s:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method putPreference(Ljava/util/HashMap;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 41
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "putPreference : hashMap = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez p1, :cond_0

    .line 44
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    const-string v9, "puttPreference : hashMap is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return v7

    .line 47
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 48
    .local v5, pref:Landroid/content/SharedPreferences;
    if-nez v5, :cond_1

    .line 50
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    const-string v9, "putPreference : pref is  null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 56
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 57
    .local v3, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 58
    .local v1, hashSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    .local v6, s:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->mPreferenceName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "putPreference : tag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    const/4 v7, 0x1

    goto :goto_0
.end method
