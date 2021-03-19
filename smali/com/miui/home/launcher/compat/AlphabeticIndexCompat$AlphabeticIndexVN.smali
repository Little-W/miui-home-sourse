.class Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;
.super Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphabeticIndexVN"
.end annotation


# instance fields
.field private final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$1;)V

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 184
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 185
    :goto_0
    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v3, v2}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 187
    new-array v5, v2, [Ljava/util/Locale;

    invoke-virtual {p1, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    :cond_1
    new-array p1, v2, [Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v0, p1, v1

    invoke-virtual {v3, p1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 191
    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
