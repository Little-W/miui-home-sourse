.class Lcom/miui/home/launcher/commercial/CommercialCommons$1;
.super Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;
.source "CommercialCommons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDesktopFolderRecommendAdInfo(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor<",
        "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 39
    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons$1;->getPackageName(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
