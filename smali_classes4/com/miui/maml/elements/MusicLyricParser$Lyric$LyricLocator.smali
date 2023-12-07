.class Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricLocator"
.end annotation


# instance fields
.field final CRLF_LENGTH:I

.field mFullLyric:Ljava/lang/String;

.field mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field mTimeArr:[I

.field final synthetic this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 267
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    return-void
.end method

.method private getLineNumber(J)I
    .locals 4

    const/4 v0, 0x0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 309
    aget v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 310
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-long v1, v1

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_1
    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    .line 280
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v2, v0

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 282
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 283
    new-instance v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v4, v5}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 284
    iput-object v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    if-lez v2, :cond_1

    .line 285
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 286
    iget v5, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v3, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v5, v3

    iget v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v3, v5

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 287
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 289
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 290
    :goto_3
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v1, v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 276
    :cond_5
    :goto_4
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 277
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getAfterLines(J)Ljava/lang/String;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 333
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-gez p1, :cond_1

    .line 335
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    return-object p0

    .line 336
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 337
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 338
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method getBeforeLines(J)Ljava/lang/String;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-lez p1, :cond_1

    .line 323
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 324
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v0, 0x0

    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    sub-int/2addr p1, p0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method getLastLine(J)Ljava/lang/String;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 348
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-lez p1, :cond_1

    .line 350
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 351
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method getLine(J)Ljava/lang/String;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 301
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 302
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method getNextLine(J)Ljava/lang/String;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    const/4 p2, -0x1

    if-lt p1, p2, :cond_1

    .line 361
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    .line 362
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 363
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method set([ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 271
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    return-void
.end method
