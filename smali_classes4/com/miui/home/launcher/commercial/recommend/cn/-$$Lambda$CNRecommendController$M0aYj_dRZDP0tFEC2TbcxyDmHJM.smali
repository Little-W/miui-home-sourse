.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$M0aYj_dRZDP0tFEC2TbcxyDmHJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$M0aYj_dRZDP0tFEC2TbcxyDmHJM;->f$0:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$M0aYj_dRZDP0tFEC2TbcxyDmHJM;->f$0:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$setPreinstallAdList$10(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
