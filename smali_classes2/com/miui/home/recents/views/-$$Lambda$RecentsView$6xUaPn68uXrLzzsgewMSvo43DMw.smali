.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$1:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$1:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/RecentsView;->lambda$updateTaskStackViewBounds$5$RecentsView(Landroid/graphics/Rect;Z)V

    return-void
.end method
