.class public Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;,
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 103
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 104
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 105
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 106
    iput-boolean p3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 107
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    const-string p3, "\n"

    const/4 v0, -0x1

    invoke-direct {p1, v0, p3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 108
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "\n"

    invoke-direct {p1, p2, p3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x1f40

    add-int/2addr v1, p1

    int-to-long v0, v1

    const-wide v2, 0x40bf400000000000L    # 8000.0

    mul-double/2addr p2, v2

    double-to-long p1, p2

    add-long/2addr v0, p1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    double-to-long v0, v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return-void
.end method

.method public correctLyric(Lcom/miui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .locals 6

    .line 169
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v0

    if-ltz p2, :cond_5

    if-gt p2, v0, :cond_5

    .line 170
    iget v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ltz v1, :cond_5

    iget v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-le v1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    iget-wide v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v0

    .line 176
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 178
    iget v5, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-gt p2, v5, :cond_1

    iget v5, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ne p2, v5, :cond_2

    iget-wide p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    cmpl-double p1, p3, p1

    if-lez p1, :cond_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    if-nez v4, :cond_3

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    return-void

    :cond_3
    if-eqz v4, :cond_4

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    return-void

    :cond_4
    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 190
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public decorate()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 254
    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastLine(J)Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLine(J)Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLyricContent(I)Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
    .locals 1

    if-gez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 198
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    :goto_0
    return-object p1
.end method

.method public getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 131
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v1, v0

    int-to-long v3, v1

    cmp-long v1, v3, p1

    const-wide/16 v3, 0x0

    if-lez v1, :cond_0

    .line 132
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 135
    :goto_0
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 136
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v5, v0

    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-lez v6, :cond_2

    .line 138
    iget-object v6, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    sub-int/2addr v2, v1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v1, v0

    if-le v5, v1, :cond_1

    int-to-long v3, v1

    sub-long/2addr p1, v3

    long-to-double p1, p1

    sub-int/2addr v5, v1

    int-to-double v0, v5

    div-double v3, p1, v0

    .line 143
    :cond_1
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v2, v0

    int-to-long v5, v2

    sub-long/2addr p1, v5

    const-wide/16 v5, 0x1f40

    cmp-long v0, p1, v5

    if-gez v0, :cond_4

    long-to-double p1, p1

    const-wide v2, 0x40bf400000000000L    # 8000.0

    div-double/2addr p1, v2

    .line 149
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v2, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v0

    .line 152
    :cond_4
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object p1
.end method

.method public getNextLine(J)Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOpenTime()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 219
    iget-object v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTimeArr()[I
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 231
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v4, v1, 0x1

    .line 232
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v3, v5

    aput v3, v0, v1

    move v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isModified()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public recycleContent()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resetHeaderOffset()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    return-void
.end method

.method public set([ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
