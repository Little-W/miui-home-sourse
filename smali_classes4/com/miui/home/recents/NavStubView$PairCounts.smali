.class Lcom/miui/home/recents/NavStubView$PairCounts;
.super Ljava/lang/Object;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairCounts"
.end annotation


# instance fields
.field pairCount:F

.field pairCountLeft:F

.field pairCountRight:F

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 7809
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7805
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7806
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7807
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    .line 7810
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7811
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7812
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method


# virtual methods
.method public clearPairCount()V
    .locals 1

    const/4 v0, 0x0

    .line 7816
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7817
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7818
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method

.method public setPairCounts(FFF)V
    .locals 0

    .line 7822
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7823
    iput p2, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7824
    iput p3, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method
