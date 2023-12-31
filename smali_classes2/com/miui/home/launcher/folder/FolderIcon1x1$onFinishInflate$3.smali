.class final Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;
.super Ljava/lang/Object;
.source "FolderIcon1x1.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon1x1;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMIconImageView$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    const-string v1, "mIconImageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMFolderCover$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 74
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
