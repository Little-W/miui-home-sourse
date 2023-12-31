.class Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NormalEditEnterAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalOutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationExitEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationExitEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationStart()V

    return-void
.end method
