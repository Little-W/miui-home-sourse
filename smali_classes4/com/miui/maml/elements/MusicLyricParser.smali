.class public Lcom/miui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;,
        Lcom/miui/maml/elements/MusicLyricParser$Lyric;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v3, v4, :cond_1

    .line 402
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_1
    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_3

    .line 406
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v3, v5, :cond_2

    .line 407
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    invoke-direct {v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    .line 431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\r\n"

    .line 432
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 434
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, p0, v2

    .line 435
    invoke-static {v5, v0, v1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v2, v4

    .line 447
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 448
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;-><init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 551
    :try_start_0
    array-length v2, p0

    sub-int/2addr v2, v0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    .line 554
    array-length v4, p0

    sub-int/2addr v4, v1

    const/16 v5, 0x3c

    move v6, v5

    :goto_0
    if-ltz v4, :cond_0

    .line 555
    aget-object v7, p0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v6

    mul-int/2addr v6, v5

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const p0, 0x112a880

    if-ge v2, p0, :cond_1

    .line 564
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-direct {p0, v2, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    :catch_0
    return v0
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I
    .locals 4

    const-string v0, ":"

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_6

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 521
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 522
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "al"

    .line 524
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ar"

    .line 526
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ti"

    .line 528
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "by"

    .line 530
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ve"

    .line 532
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 533
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "offset"

    .line 534
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 536
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    :catch_0
    :cond_6
    :goto_1
    return v1
.end method

.method private static parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 474
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 475
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 481
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "["

    .line 483
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_2

    return v1

    .line 488
    :cond_2
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 492
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move v6, v2

    move v7, v3

    :goto_0
    if-ge v6, v0, :cond_6

    aget-object v8, p0, v6

    .line 493
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 497
    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    .line 498
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 499
    array-length v10, v9

    if-ge v10, v3, :cond_4

    goto :goto_1

    .line 503
    :cond_4
    aget-object v7, v9, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 504
    invoke-static {v9, p2, v4}, Lcom/miui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 506
    :cond_5
    invoke-static {v8, p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I

    move-result v7

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return v7
.end method

.method public static parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 416
    :try_start_0
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/miui/maml/elements/MusicLyricParser;->correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 420
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
