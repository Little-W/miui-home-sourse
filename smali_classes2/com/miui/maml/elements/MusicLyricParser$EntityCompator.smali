.class Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntityCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;)I
    .locals 0

    .line 458
    iget p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget p1, p2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 455
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    check-cast p2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;->compare(Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;)I

    move-result p0

    return p0
.end method
