.class public Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringMatcher"
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/Collator;->setDecomposition(I)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
    .locals 1

    .line 235
    new-instance v0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 228
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0xffff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-le p0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method
