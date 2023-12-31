.class Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;
.super Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphabeticIndexV16"
.end annotation


# instance fields
.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketLabelMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$1;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v0, "libcore.icu.AlphabeticIndex"

    .line 132
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 133
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getBucketIndex"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 134
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-string v3, "getBucketLabel"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 135
    const-class v3, Ljava/util/Locale;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mAlphabeticIndex:Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Class;

    .line 138
    const-class v2, Ljava/util/Locale;

    aput-object v2, p1, v4

    const-string v2, "addLabels"

    invoke-virtual {v0, v2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v4

    .line 139
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 4

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 5

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
