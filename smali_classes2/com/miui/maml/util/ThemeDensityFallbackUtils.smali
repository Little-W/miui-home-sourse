.class public Lcom/miui/maml/util/ThemeDensityFallbackUtils;
.super Ljava/lang/Object;
.source "ThemeDensityFallbackUtils.java"


# static fields
.field private static final ALL_SUPPORT_DENSITY:[I

.field private static final DENSITIES:[I

.field private static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->DENSITIES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->ALL_SUPPORT_DENSITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x280
        0x1e0
        0x140
        0x1b8
        0xf0
        0xa0
        0x78
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNearestDir(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_0
    sget-object v3, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->ALL_SUPPORT_DENSITY:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 79
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lcom/miui/maml/util/ThemeDensityFallbackUtils$1;

    invoke-direct {v2, p1}, Lcom/miui/maml/util/ThemeDensityFallbackUtils$1;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p1, v1

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "drawable"

    if-ge p1, v2, :cond_2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 99
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    :cond_4
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v3

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findNearestSupportDensity(I)I
    .locals 5

    const/16 v0, 0x1b8

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 124
    :goto_0
    sget-object v3, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->ALL_SUPPORT_DENSITY:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 125
    aget v3, v3, v2

    sub-int v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 128
    sget-object v0, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->ALL_SUPPORT_DENSITY:[I

    aget v0, v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/16 v1, 0x78

    if-eq p0, v1, :cond_8

    const/16 v1, 0xa0

    if-eq p0, v1, :cond_7

    const/16 v1, 0xf0

    if-eq p0, v1, :cond_6

    const/16 v1, 0x140

    if-eq p0, v1, :cond_5

    const/16 v1, 0x1b8

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1e0

    if-eq p0, v1, :cond_3

    const/16 v1, 0x280

    if-eq p0, v1, :cond_2

    .line 56
    sget-object v1, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 58
    sget-object v2, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v3, v3, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    :cond_1
    sget-object p0, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget p0, p0, v1

    invoke-static {p0}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "-xxxhdpi"

    return-object p0

    :cond_3
    const-string p0, "-xxhdpi"

    return-object p0

    :cond_4
    const-string p0, "-nxhdpi"

    return-object p0

    :cond_5
    const-string p0, "-xhdpi"

    return-object p0

    :cond_6
    const-string p0, "-hdpi"

    return-object p0

    :cond_7
    const-string p0, "-mdpi"

    return-object p0

    :cond_8
    const-string p0, "-ldpi"

    return-object p0

    :cond_9
    const-string p0, "-nodpi"

    return-object p0

    :cond_a
    const-string p0, ""

    return-object p0
.end method

.method public static getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1

    .line 29
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x2d0

    if-lt p0, v0, :cond_0

    const-string p0, "-sw720dp"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
