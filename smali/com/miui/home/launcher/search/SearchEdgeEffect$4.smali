.class Lcom/miui/home/launcher/search/SearchEdgeEffect$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/search/SearchEdgeEffect;->animReveal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->access$002(Lcom/miui/home/launcher/search/SearchEdgeEffect;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 290
    iget-boolean p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->isCanceled:Z

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->open()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :goto_0
    return-void
.end method
