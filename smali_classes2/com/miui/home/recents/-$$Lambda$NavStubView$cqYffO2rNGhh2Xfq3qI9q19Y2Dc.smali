.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;->f$1:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;->f$1:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToApp$33(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    return-void
.end method
