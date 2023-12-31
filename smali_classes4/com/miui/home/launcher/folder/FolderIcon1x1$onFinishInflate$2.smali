.class public final Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon1x1.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon1x1;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMAlphaAnimator$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
