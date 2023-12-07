.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

.field private final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;->f$1:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;->f$1:Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestGuessRecommend$5$CNRecommendController(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
