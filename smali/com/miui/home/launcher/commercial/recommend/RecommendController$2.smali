.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;
.super Ljava/lang/Object;
.source "RecommendController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    iget-object v1, v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->access$300(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearContents()V

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->access$100(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$2$smojGDZvnipFFMLH_tPqczLsufg;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$2$smojGDZvnipFFMLH_tPqczLsufg;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;)V

    .line 421
    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->access$200(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    return-void
.end method
