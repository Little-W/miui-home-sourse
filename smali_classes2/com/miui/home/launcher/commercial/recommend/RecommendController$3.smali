.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;
.super Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;
.source "RecommendController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendAppsContents()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor<",
        "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Ljava/lang/String;
    .locals 0

    .line 497
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 494
    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;->getPackageName(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
