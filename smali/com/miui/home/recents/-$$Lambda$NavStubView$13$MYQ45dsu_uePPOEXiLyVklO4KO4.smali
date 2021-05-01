.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$13$MYQ45dsu_uePPOEXiLyVklO4KO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$13;

.field private final synthetic f$1:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$13;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$MYQ45dsu_uePPOEXiLyVklO4KO4;->f$0:Lcom/miui/home/recents/NavStubView$13;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$MYQ45dsu_uePPOEXiLyVklO4KO4;->f$1:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$MYQ45dsu_uePPOEXiLyVklO4KO4;->f$0:Lcom/miui/home/recents/NavStubView$13;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$MYQ45dsu_uePPOEXiLyVklO4KO4;->f$1:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$13;->lambda$onAnimationEnd$265(Lcom/miui/home/recents/NavStubView$13;Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method
