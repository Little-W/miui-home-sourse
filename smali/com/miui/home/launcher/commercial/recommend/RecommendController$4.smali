.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;
.super Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;
.source "RecommendController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendInfoList()Ljava/util/List;
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


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/String;
    .locals 0

    .line 490
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 487
    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;->getPackageName(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
