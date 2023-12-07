.class public abstract Landroidx/emoji2/text/EmojiCompat$Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# instance fields
.field mEmojiAsDefaultStyleExceptions:[I

.field mEmojiSpanIndicatorColor:I

.field mEmojiSpanIndicatorEnabled:Z

.field mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field mReplaceAll:Z

.field mUseEmojiAsDefaultStyle:Z


# direct methods
.method protected constructor <init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;

    invoke-direct {v0}, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    const-string v0, "metadataLoader cannot be null."

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    return-void
.end method


# virtual methods
.method protected final getMetadataRepoLoader()Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    return-object p0
.end method

.method public setMetadataLoadStrategy(I)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0

    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    return-object p0
.end method
