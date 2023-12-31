.class public final Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderAnimHelper;->startFolderAnim(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderGridView;Landroid/widget/ImageView;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $folderInfo:Lcom/miui/home/launcher/FolderInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderAnimHelper;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            ")V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 149
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->access$setObjectAnimationEnd$p(Lcom/miui/home/launcher/folder/FolderAnimHelper;Z)V

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->access$onAnimationEnd(Lcom/miui/home/launcher/folder/FolderAnimHelper;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 144
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->access$setObjectAnimationEnd$p(Lcom/miui/home/launcher/folder/FolderAnimHelper;Z)V

    return-void
.end method
