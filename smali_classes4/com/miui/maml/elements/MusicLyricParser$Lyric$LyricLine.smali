.class Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricLine"
.end annotation


# instance fields
.field lyric:Ljava/lang/CharSequence;

.field pos:I

.field final synthetic this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
