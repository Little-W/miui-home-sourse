.class Lcom/miui/home/launcher/search/SearchEdgeEffect$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/search/SearchEdgeEffect;->animReduce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$3;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$3;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->access$002(Lcom/miui/home/launcher/search/SearchEdgeEffect;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 284
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$3;->this$0:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->access$102(Lcom/miui/home/launcher/search/SearchEdgeEffect;I)I

    return-void
.end method
