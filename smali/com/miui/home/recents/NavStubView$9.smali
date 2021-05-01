.class Lcom/miui/home/recents/NavStubView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$startRectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V
    .locals 0

    .line 2104
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$9;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$9;->val$startRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 2107
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$9;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$9;->val$startRectF:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v2, v1, v3}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)V

    return-void
.end method
