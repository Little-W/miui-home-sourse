.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$PhzXWDOekiZsD4JXMUEeJrqCrmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$PhzXWDOekiZsD4JXMUEeJrqCrmM;->f$0:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$PhzXWDOekiZsD4JXMUEeJrqCrmM;->f$0:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-void
.end method
