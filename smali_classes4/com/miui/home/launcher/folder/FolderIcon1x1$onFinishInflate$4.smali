.class public final Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;
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

    .line 78
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMFolderCover$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMIconImageView$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    const-string p1, "mIconImageView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    return-void
.end method
