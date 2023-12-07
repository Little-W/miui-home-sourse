.class public Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/DefaultEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEmojiCompatConfigFactory"
.end annotation


# instance fields
.field private final mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    return-void
.end method

.method private configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    return-object p0
.end method

.method private convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v1, p2, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Landroidx/core/provider/FontRequest;

    const-string v1, "emojicompat-emoji-font"

    invoke-direct {p2, v0, p1, v1, p0}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method private static getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;-><init>()V

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;-><init>()V

    return-object v0
.end method

.method private hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->queryIntentContentProviders(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getProviderInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object p0

    return-object p0
.end method

.method queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "Package manager required to locate emoji font provider"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "emoji2.text.DefaultEmojiConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
