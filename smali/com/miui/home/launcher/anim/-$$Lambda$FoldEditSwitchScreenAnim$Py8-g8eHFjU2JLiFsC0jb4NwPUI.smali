.class public final synthetic Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$Py8-g8eHFjU2JLiFsC0jb4NwPUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$Py8-g8eHFjU2JLiFsC0jb4NwPUI;->f$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$Py8-g8eHFjU2JLiFsC0jb4NwPUI;->f$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->lambda$startFoldEditDragingAnim$5(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Landroid/animation/ValueAnimator;)V

    return-void
.end method
