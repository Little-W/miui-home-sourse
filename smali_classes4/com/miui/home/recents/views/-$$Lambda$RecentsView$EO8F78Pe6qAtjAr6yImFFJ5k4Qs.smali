.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iget-object p0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsView;->lambda$onRecentsVisibleBoundChangedWithAnim$3$RecentsView(Landroid/graphics/Rect;)V

    return-void
.end method
