.class Lcom/miui/home/recents/NavStubView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$isHalfApp:Z

.field final synthetic val$startRectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Z)V
    .locals 0

    .line 3621
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$10;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$10;->val$startRectF:Landroid/graphics/RectF;

    iput-boolean p3, p0, Lcom/miui/home/recents/NavStubView$10;->val$isHalfApp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 3624
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$10;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$10;->val$startRectF:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView$10;->val$isHalfApp:Z

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->access$5000(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFZ)V

    return-void
.end method
