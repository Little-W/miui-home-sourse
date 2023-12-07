.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;
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

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$7$CNRecommendController(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    return-void
.end method
