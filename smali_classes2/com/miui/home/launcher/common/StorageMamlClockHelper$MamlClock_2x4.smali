.class public Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;
.super Ljava/lang/Object;
.source "StorageMamlClockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/StorageMamlClockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlClock_2x4"
.end annotation


# instance fields
.field public contentPath:Ljava/lang/String;

.field public contentUri:Landroid/net/Uri;

.field private localeTitlesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public previewPath:Ljava/lang/String;

.field public previewUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    return-object p1
.end method

.method private getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s_%s"

    .line 83
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "zh_CN"

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "fallback"

    const-string v3, "en_US"

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->localeTitlesMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
