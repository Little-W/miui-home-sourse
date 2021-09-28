.class Lcom/miui/home/launcher/CellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$2;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$2;->this$0:Lcom/miui/home/launcher/CellLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/CellLayout;->access$102(Lcom/miui/home/launcher/CellLayout;[F)[F

    .line 239
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$2;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$2;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
