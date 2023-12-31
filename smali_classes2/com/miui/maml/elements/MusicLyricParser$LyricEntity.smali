.class public Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricEntity"
.end annotation


# static fields
.field private static final HTML_BR_PATTERN:Ljava/lang/String; = "%s<br/>"


# instance fields
.field public lyric:Ljava/lang/CharSequence;

.field public time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 59
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public decorate()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s<br/>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    return-void
.end method

.method public isDecorated()Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    instance-of p0, p0, Ljava/lang/String;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
