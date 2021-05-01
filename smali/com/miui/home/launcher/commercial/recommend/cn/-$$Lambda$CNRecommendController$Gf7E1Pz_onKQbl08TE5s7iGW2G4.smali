.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

.field private final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;

.field private final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$Gf7E1Pz_onKQbl08TE5s7iGW2G4;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$435(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    return-void
.end method
