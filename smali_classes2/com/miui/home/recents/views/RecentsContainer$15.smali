.class Lcom/miui/home/recents/views/RecentsContainer$15;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$15;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$15;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$800(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1458
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$15;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->prepareFsGestureEnterRecents()V

    const/4 v0, 0x1

    return v0
.end method
