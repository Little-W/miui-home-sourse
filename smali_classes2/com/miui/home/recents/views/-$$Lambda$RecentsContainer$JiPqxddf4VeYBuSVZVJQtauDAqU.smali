.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;->f$0:Z

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;->f$0:Z

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->lambda$notifyRecentTaskState$1(ZLandroid/content/Context;)V

    return-void
.end method
