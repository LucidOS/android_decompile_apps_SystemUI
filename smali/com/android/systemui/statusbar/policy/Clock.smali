.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# instance fields
.field public final ACTION_CHANGE_FONT:Ljava/lang/String;

.field private AM_PM_STYLE:I

.field private isConfigurationChanged:Z

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 74
    const-string v0, "com.android.action.CHANGE_FONT"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->ACTION_CHANGE_FONT:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->isConfigurationChanged:Z

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->isConfigurationChanged:Z

    return p1
.end method

.method private getCurruntLanguageIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "language"

    .prologue
    const/4 v0, 0x1

    .line 333
    if-nez p1, :cond_1

    .line 334
    const-string v0, "StatusBarClock"

    const-string v1, "language setting is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, -0x1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 340
    const-string v1, "es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 341
    const/4 v0, 0x2

    goto :goto_0

    .line 342
    :cond_2
    const-string v1, "fr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 343
    const/4 v0, 0x3

    goto :goto_0

    .line 344
    :cond_3
    const-string v1, "pt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_4

    .line 345
    const/4 v0, 0x4

    goto :goto_0

    .line 346
    :cond_4
    const-string v1, "ko"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_5

    .line 347
    const/4 v0, 0x5

    goto :goto_0

    .line 348
    :cond_5
    const-string v1, "zh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_6

    .line 349
    const/4 v0, 0x6

    goto :goto_0

    .line 351
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 25

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 191
    .local v9, context:Landroid/content/Context;
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    .line 194
    .local v7, b24:Z
    if-eqz v7, :cond_4

    .line 195
    const v18, 0x1040084

    .line 200
    .local v18, res:I
    :goto_0
    const v2, 0xef00

    .line 201
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 204
    .local v3, MAGIC2:C
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 208
    if-eqz v7, :cond_5

    const-string v10, "HH:mm"

    .line 212
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLanguage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->getCurruntLanguageIndex(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 224
    :cond_1
    const/4 v4, -0x1

    .line 225
    .local v4, a:I
    const/16 v17, 0x0

    .line 226
    .local v17, quoted:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    .line 227
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 229
    .local v8, c:C
    const/16 v22, 0x27

    move/from16 v0, v22

    if-ne v8, v0, :cond_2

    .line 230
    if-nez v17, :cond_6

    const/16 v17, 0x1

    .line 232
    :cond_2
    :goto_3
    if-nez v17, :cond_7

    const/16 v22, 0x61

    move/from16 v0, v22

    if-ne v8, v0, :cond_7

    .line 233
    move v4, v12

    .line 238
    .end local v8           #c:C
    :cond_3
    if-ltz v4, :cond_9

    .line 240
    move v6, v4

    .line 241
    .local v6, b:I
    :goto_4
    if-lez v4, :cond_8

    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 242
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 197
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v6           #b:I
    .end local v10           #format:Ljava/lang/String;
    .end local v12           #i:I
    .end local v17           #quoted:Z
    .end local v18           #res:I
    :cond_4
    const v18, 0x1040083

    .restart local v18       #res:I
    goto/16 :goto_0

    .line 208
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v10       #format:Ljava/lang/String;
    :cond_5
    const-string v10, "a h:mm"

    goto :goto_1

    .line 230
    .restart local v4       #a:I
    .restart local v8       #c:C
    .restart local v12       #i:I
    .restart local v17       #quoted:Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 226
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 244
    .end local v8           #c:C
    .restart local v6       #b:I
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xef00

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xef01

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v6, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 249
    .end local v4           #a:I
    .end local v6           #b:I
    .end local v12           #i:I
    .end local v17           #quoted:Z
    :cond_9
    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v20, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 250
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 264
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 266
    .local v19, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 267
    const v22, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 268
    .local v14, magic1:I
    const v22, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 269
    .local v15, magic2:I
    if-ltz v14, :cond_14

    if-le v15, v14, :cond_14

    .line 270
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .local v11, formatted:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 272
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 311
    .end local v11           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    :goto_6
    return-object v11

    .line 254
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #sdf:Ljava/text/SimpleDateFormat;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLanguage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->getCurruntLanguageIndex(Ljava/lang/String;)I

    move-result v13

    .line 256
    .local v13, lang:I
    const/16 v22, 0x5

    move/from16 v0, v22

    if-eq v13, v0, :cond_b

    const/16 v22, 0x6

    move/from16 v0, v22

    if-ne v13, v0, :cond_c

    .line 257
    :cond_b
    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v20       #sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 258
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_5

    .line 260
    .end local v20           #sdf:Ljava/text/SimpleDateFormat;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v0

    .restart local v20       #sdf:Ljava/text/SimpleDateFormat;
    goto/16 :goto_5

    .line 274
    .end local v13           #lang:I
    .restart local v11       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v14       #magic1:I
    .restart local v15       #magic2:I
    .restart local v19       #result:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 277
    :cond_e
    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/high16 v22, 0x3f00

    :goto_7
    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 280
    .local v21, style:Landroid/text/style/CharacterStyle;
    const/16 v22, 0x22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v14, v15, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 283
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    :cond_f
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v15, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 284
    add-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 277
    :cond_10
    const v22, 0x3f333333

    goto :goto_7

    .line 290
    .end local v11           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLanguage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->getCurruntLanguageIndex(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 292
    const v22, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 293
    .restart local v14       #magic1:I
    const v22, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 294
    .restart local v15       #magic2:I
    const-string v22, "clock__"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "result="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", magic1="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", magic2="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-ltz v14, :cond_14

    if-le v15, v14, :cond_14

    .line 296
    const-string v5, "AM"

    .line 297
    .local v5, am:Ljava/lang/String;
    const-string v16, "PM"

    .line 298
    .local v16, pm:Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 299
    .restart local v11       #formatted:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v22, v14, 0x1

    add-int/lit8 v23, v15, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    if-nez v22, :cond_13

    .line 301
    invoke-virtual {v11, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 305
    :cond_12
    :goto_8
    const-string v22, "clock"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "formatted="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 302
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 303
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .end local v5           #am:Ljava/lang/String;
    .end local v11           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    .end local v16           #pm:Ljava/lang/String;
    :cond_14
    move-object/from16 v11, v19

    .line 311
    goto/16 :goto_6
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "com.android.action.CHANGE_FONT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLanguage:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 133
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLanguage:Ljava/lang/String;

    .line 330
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 142
    :cond_0
    return-void
.end method

.method public setAmPmStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 321
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method
