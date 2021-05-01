.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2yJ6jp5UC-KtptNMT0V2StlL6Mo;
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

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2yJ6jp5UC-KtptNMT0V2StlL6Mo;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2yJ6jp5UC-KtptNMT0V2StlL6Mo;->f$1:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2yJ6jp5UC-KtptNMT0V2StlL6Mo;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2yJ6jp5UC-KtptNMT0V2StlL6Mo;->f$1:Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$437(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
